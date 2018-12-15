package com.google.zxing.common.reedsolomon;

final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    GenericGFPoly(GenericGF field, int[] coefficients) {
        if (coefficients.length != 0) {
            this.field = field;
            int coefficientsLength = coefficients.length;
            if (coefficientsLength <= 1 || coefficients[0] != 0) {
                this.coefficients = coefficients;
                return;
            }
            int firstNonZero = 1;
            while (firstNonZero < coefficientsLength && coefficients[firstNonZero] == 0) {
                firstNonZero++;
            }
            if (firstNonZero == coefficientsLength) {
                this.coefficients = new int[1];
                return;
            }
            this.coefficients = new int[(coefficientsLength - firstNonZero)];
            System.arraycopy(coefficients, firstNonZero, this.coefficients, 0, this.coefficients.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    int[] getCoefficients() {
        return this.coefficients;
    }

    int getDegree() {
        return this.coefficients.length - 1;
    }

    boolean isZero() {
        return this.coefficients[0] == 0;
    }

    int getCoefficient(int degree) {
        return this.coefficients[(this.coefficients.length - 1) - degree];
    }

    int evaluateAt(int a) {
        int result = 0;
        if (a == 0) {
            return getCoefficient(0);
        }
        int size = this.coefficients.length;
        int result2;
        if (a == 1) {
            result2 = 0;
            int[] iArr = this.coefficients;
            int length = iArr.length;
            while (result < length) {
                result2 = GenericGF.addOrSubtract(result2, iArr[result]);
                result++;
            }
            return result2;
        }
        result = this.coefficients[0];
        for (result2 = 1; result2 < size; result2++) {
            result = GenericGF.addOrSubtract(this.field.multiply(a, result), this.coefficients[result2]);
        }
        return result;
    }

    GenericGFPoly addOrSubtract(GenericGFPoly other) {
        if (!this.field.equals(other.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (isZero()) {
            return other;
        } else {
            if (other.isZero()) {
                return this;
            }
            int[] temp;
            int[] smallerCoefficients = this.coefficients;
            int[] largerCoefficients = other.coefficients;
            if (smallerCoefficients.length > largerCoefficients.length) {
                temp = smallerCoefficients;
                smallerCoefficients = largerCoefficients;
                largerCoefficients = temp;
            }
            temp = new int[largerCoefficients.length];
            int lengthDiff = largerCoefficients.length - smallerCoefficients.length;
            System.arraycopy(largerCoefficients, 0, temp, 0, lengthDiff);
            for (int i = lengthDiff; i < largerCoefficients.length; i++) {
                temp[i] = GenericGF.addOrSubtract(smallerCoefficients[i - lengthDiff], largerCoefficients[i]);
            }
            return new GenericGFPoly(this.field, temp);
        }
    }

    GenericGFPoly multiply(GenericGFPoly other) {
        if (!this.field.equals(other.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (isZero() || other.isZero()) {
            return this.field.getZero();
        } else {
            int[] aCoefficients = this.coefficients;
            int aLength = aCoefficients.length;
            int[] bCoefficients = other.coefficients;
            int bLength = bCoefficients.length;
            int[] product = new int[((aLength + bLength) - 1)];
            for (int i = 0; i < aLength; i++) {
                int aCoeff = aCoefficients[i];
                for (int j = 0; j < bLength; j++) {
                    product[i + j] = GenericGF.addOrSubtract(product[i + j], this.field.multiply(aCoeff, bCoefficients[j]));
                }
            }
            return new GenericGFPoly(this.field, product);
        }
    }

    GenericGFPoly multiply(int scalar) {
        if (scalar == 0) {
            return this.field.getZero();
        }
        if (scalar == 1) {
            return this;
        }
        int size = this.coefficients.length;
        int[] product = new int[size];
        for (int i = 0; i < size; i++) {
            product[i] = this.field.multiply(this.coefficients[i], scalar);
        }
        return new GenericGFPoly(this.field, product);
    }

    GenericGFPoly multiplyByMonomial(int degree, int coefficient) {
        if (degree < 0) {
            throw new IllegalArgumentException();
        } else if (coefficient == 0) {
            return this.field.getZero();
        } else {
            int size = this.coefficients.length;
            int[] product = new int[(size + degree)];
            for (int i = 0; i < size; i++) {
                product[i] = this.field.multiply(this.coefficients[i], coefficient);
            }
            return new GenericGFPoly(this.field, product);
        }
    }

    GenericGFPoly[] divide(GenericGFPoly other) {
        if (!this.field.equals(other.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (other.isZero()) {
            throw new IllegalArgumentException("Divide by 0");
        } else {
            GenericGFPoly quotient = this.field.getZero();
            GenericGFPoly remainder = this;
            int inverseDenominatorLeadingTerm = this.field.inverse(other.getCoefficient(other.getDegree()));
            while (remainder.getDegree() >= other.getDegree() && !remainder.isZero()) {
                int degreeDifference = remainder.getDegree() - other.getDegree();
                int scale = this.field.multiply(remainder.getCoefficient(remainder.getDegree()), inverseDenominatorLeadingTerm);
                GenericGFPoly term = other.multiplyByMonomial(degreeDifference, scale);
                quotient = quotient.addOrSubtract(this.field.buildMonomial(degreeDifference, scale));
                remainder = remainder.addOrSubtract(term);
            }
            return new GenericGFPoly[]{quotient, remainder};
        }
    }

    public String toString() {
        StringBuilder result = new StringBuilder(8 * getDegree());
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    result.append(" - ");
                    coefficient = -coefficient;
                } else if (result.length() > 0) {
                    result.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    int alphaPower = this.field.log(coefficient);
                    if (alphaPower == 0) {
                        result.append('1');
                    } else if (alphaPower == 1) {
                        result.append('a');
                    } else {
                        result.append("a^");
                        result.append(alphaPower);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        result.append('x');
                    } else {
                        result.append("x^");
                        result.append(degree);
                    }
                }
            }
        }
        return result.toString();
    }
}
