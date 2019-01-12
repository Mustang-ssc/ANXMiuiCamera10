package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.c;
import com.bumptech.glide.util.i;

/* compiled from: EngineResource */
class k<Z> implements p<Z> {
    private a dN;
    private final boolean dT;
    private final p<Z> dU;
    private final boolean fX;
    private int fY;
    private boolean fZ;
    private c key;

    /* compiled from: EngineResource */
    interface a {
        void b(c cVar, k<?> kVar);
    }

    k(p<Z> pVar, boolean z, boolean z2) {
        this.dU = (p) i.checkNotNull(pVar);
        this.dT = z;
        this.fX = z2;
    }

    void a(c cVar, a aVar) {
        this.key = cVar;
        this.dN = aVar;
    }

    p<Z> aX() {
        return this.dU;
    }

    boolean aY() {
        return this.dT;
    }

    @NonNull
    public Class<Z> aZ() {
        return this.dU.aZ();
    }

    @NonNull
    public Z get() {
        return this.dU.get();
    }

    public int getSize() {
        return this.dU.getSize();
    }

    public void recycle() {
        if (this.fY > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (this.fZ) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        } else {
            this.fZ = true;
            if (this.fX) {
                this.dU.recycle();
            }
        }
    }

    void acquire() {
        if (this.fZ) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            this.fY++;
        } else {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
    }

    void release() {
        if (this.fY <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        } else if (Looper.getMainLooper().equals(Looper.myLooper())) {
            int i = this.fY - 1;
            this.fY = i;
            if (i == 0) {
                this.dN.b(this.key, this);
            }
        } else {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("EngineResource{isCacheable=");
        stringBuilder.append(this.dT);
        stringBuilder.append(", listener=");
        stringBuilder.append(this.dN);
        stringBuilder.append(", key=");
        stringBuilder.append(this.key);
        stringBuilder.append(", acquired=");
        stringBuilder.append(this.fY);
        stringBuilder.append(", isRecycled=");
        stringBuilder.append(this.fZ);
        stringBuilder.append(", resource=");
        stringBuilder.append(this.dU);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}
