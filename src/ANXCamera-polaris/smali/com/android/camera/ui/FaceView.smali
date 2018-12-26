.class public Lcom/android/camera/ui/FaceView;
.super Lcom/android/camera/ui/FrameView;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FaceView$FaceViewRectState;,
        Lcom/android/camera/ui/FaceView$PopType;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_TIME_DELAY:I = 0x7d0

.field private static final GENDER_FEMALE_RECT_COLOR:I = -0x11957f

.field private static final GENDER_MALE_RECT_COLOR:I = -0x90480c

.field private static final LATEST_FACE_NUM:I = 0x6

.field private static final MAGIC_MIRROR_RECT_COLOR:I = -0x47c9

.field private static final MAX_FACE_MOVE_DISTANCE:I = 0x78

.field private static final MAX_FACE_WIDTH_DISTANCE:I = 0x5a

.field public static final MAX_GENDER_FEMALE:F = 0.4f

.field public static final MIN_ANALYZE_PROB:F = 0.5f

.field private static final MIN_FACE_WIDTH:I = 0x29e

.field public static final MIN_GENDER_MALE:F = 0.6f

.field private static final MSG_AUTOMATIC_HIDE_FACE:I = 0x1

.field private static final MSG_CANCEL_FACE_HIDE:I = 0x2

.field private static final MSG_SET_FACE_VISIBLE:I = 0x3

.field private static final SHOW_TYPE_GENDER_AGE:I = 0x1

.field private static final SHOW_TYPE_NORMAL:I = 0x0

.field private static final SHOW_TYPE_NULL:I = -0x1

.field private static final SHOW_TYPE_SCORE:I = 0x4

.field private static final SHOW_TYPE_SCORE_WINNER:I = 0x2

.field private static final STATE_FORCE_HIDE:I = 0x4

.field private static final STATE_HIDE:I = 0x2

.field private static final STATE_NORMAL:I = 0x1

.field private static final STATE_WAIT_FOR_HIDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FaceView"


# instance fields
.field private configuration:Landroid/content/res/Configuration;

.field private mActiveArraySize:Landroid/graphics/Rect;

.field private mAgeFemaleHonPadding:I

.field private mAgeMaleHonPadding:I

.field private mAgeVerPadding:I

.field private mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

.field private mCamera2TranslateMatrix:Landroid/graphics/Matrix;

.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mCanvasMatrix:Landroid/graphics/Matrix;

.field private mCorrection:I

.field private mCurrentWaterMarkDataInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

.field private mEffectRectPaint:Landroid/graphics/Paint;

.field private mFaceAgeFormat:Ljava/lang/String;

.field private mFaceInfoNumberPaint:Landroid/graphics/Paint;

.field private mFaceInfoTextPaint:Landroid/graphics/Paint;

.field private mFacePopupBottom:I

.field private mFaceRectHideAnimator:Landroid/animation/Animator;

.field private mFaceScoreInfoFormat:Ljava/lang/String;

.field private mFaces:[Lcom/android/camera2/CameraHardwareFace;

.field private mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mGap:I

.field private mHandler:Landroid/os/Handler;

.field private mIsCameraFaceDetectionAutoHidden:Z

.field private mIsUpdateFaceInfos:Z

.field private mLatestFaceIndex:I

.field private mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

.field private mLightingOn:Z

.field private mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mNormalRectPaint:Landroid/graphics/Paint;

.field private mOrientation:I

.field private mPopBottomMargin:I

.field private mRect:Landroid/graphics/RectF;

.field private mRectState:I

.field private mScoreHonPadding:I

.field private mScoreVerPadding:I

.field private mSexFemaleIc:Landroid/graphics/drawable/Drawable;

.field private mSexMaleIc:Landroid/graphics/drawable/Drawable;

.field private mShowGenderAndAge:Z

.field private mShowMagicMirror:Z

.field private mSkipDraw:Z

.field private mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

.field private mWaterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation
.end field

.field private mWinnerIndex:I

.field private mZoomValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    .line 70
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    .line 71
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    .line 77
    const/4 p2, 0x6

    new-array p2, p2, [Lcom/android/camera2/CameraHardwareFace;

    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 78
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    .line 121
    iput p2, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 146
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 158
    new-instance v1, Lcom/android/camera/ui/FaceView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/FaceView$1;-><init>(Lcom/android/camera/ui/FaceView;)V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    .line 187
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FaceView;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/FaceView;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private attemptHideFaceRect()V
    .locals 4

    .line 320
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 321
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    return-void
.end method

.method private cancelHideAnimator()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 335
    :cond_0
    return-void
.end method

.method private clearAttemptHideFaceRect()V
    .locals 2

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    return-void
.end method

.method private determineWatermarkType()I
    .locals 1

    .line 891
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMagicMirrorWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v0, 0x1

    return v0

    .line 893
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderWaterMarkOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    const/4 v0, 0x2

    return v0

    .line 896
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V
    .locals 5

    .line 812
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 814
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 816
    const-string v1, "\\d+\\.?\\d*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 818
    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 821
    int-to-float v3, p3

    div-float v2, v1, v2

    add-float/2addr v3, v2

    int-to-float v2, p4

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 824
    :goto_1
    int-to-float p3, p3

    add-float/2addr p3, v1

    float-to-int p3, p3

    .line 825
    goto :goto_0

    .line 826
    :cond_1
    return-void
.end method

.method private drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 766
    iget-object v8, v0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 767
    nop

    .line 768
    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 769
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 770
    const-string v12, "\\d+\\.?\\d*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 771
    iget-object v12, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v10, v11

    goto :goto_1

    .line 773
    :cond_0
    iget-object v12, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v10, v11

    .line 775
    :goto_1
    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, v6

    iget v11, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v8, v11

    int-to-float v8, v8

    add-float/2addr v8, v10

    int-to-float v11, v6

    add-float/2addr v8, v11

    float-to-int v8, v8

    .line 779
    move/from16 v11, p7

    int-to-float v11, v11

    const v12, 0x40666666    # 3.6f

    mul-float/2addr v12, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 780
    new-instance v13, Landroid/graphics/Rect;

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v14

    float-to-int v14, v14

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v14, v8

    iget v15, v2, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    sub-int/2addr v15, v12

    sub-int v15, v15, p9

    sub-int v15, v15, p8

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v12, v8

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    sub-int v2, v2, p9

    invoke-direct {v13, v14, v15, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 786
    if-eqz v4, :cond_2

    .line 787
    invoke-virtual {v4, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 788
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 793
    iget v4, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    iget v7, v13, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const v8, 0x3fe66666    # 1.8f

    mul-float/2addr v11, v8

    add-float/2addr v7, v11

    iget v8, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v8, v6

    iget v6, v13, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v11

    iget v11, v0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    int-to-float v11, v11

    sub-float/2addr v6, v11

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    float-to-int v6, v6

    .line 793
    invoke-virtual {v2, v4, v7, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 799
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 800
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 803
    cmpl-float v3, v10, v9

    if-eqz v3, :cond_3

    .line 804
    iget-object v3, v0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 805
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v6, v0, Lcom/android/camera/ui/FaceView;->mGap:I

    add-int/2addr v4, v6

    .line 806
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v6, v2

    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 807
    invoke-direct {v0, v1, v5, v4, v6}, Lcom/android/camera/ui/FaceView;->drawFaceInfoText(Landroid/graphics/Canvas;Ljava/lang/String;II)V

    .line 809
    :cond_3
    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera2/CameraHardwareFace;)V
    .locals 2

    .line 730
    const/4 v0, 0x4

    const v1, 0x3c75c28f    # 0.015f

    if-eq p3, v0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    .line 750
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 751
    return-void

    .line 753
    :cond_0
    iget p3, p4, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const p4, 0x3ecccccd    # 0.4f

    cmpg-float p3, p3, p4

    if-gez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 754
    :goto_0
    iget-object p4, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 755
    if-eqz p3, :cond_2

    const p3, -0x11957f

    goto :goto_1

    :cond_2
    const p3, -0x90480c

    .line 754
    :goto_1
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 757
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v1

    .line 758
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 757
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 745
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v1

    .line 746
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    .line 745
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 747
    goto :goto_2

    .line 732
    :pswitch_2
    return-void

    .line 736
    :cond_3
    :pswitch_3
    iget p3, p4, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_4

    .line 737
    return-void

    .line 739
    :cond_4
    iget-object p3, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    const/16 p4, -0x47c9

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    mul-float/2addr p3, v1

    .line 741
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float/2addr p4, v1

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mEffectRectPaint:Landroid/graphics/Paint;

    .line 740
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 742
    nop

    .line 761
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;
    .locals 4

    .line 612
    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->ageMale:F

    float-to-int v0, v0

    .line 613
    iget v1, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 614
    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->ageFemale:F

    float-to-int v0, p1

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I
    .locals 7

    .line 830
    nop

    .line 831
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    array-length v2, p1

    if-lez v2, :cond_6

    .line 832
    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz v2, :cond_5

    .line 833
    nop

    .line 834
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 835
    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 836
    aget-object v4, p1, v0

    .line 837
    iget v5, v4, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 838
    add-int/lit8 v3, v3, 0x1

    .line 839
    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    if-eq v5, v2, :cond_0

    iget v4, v4, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    iget v5, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    aget-object v5, p1, v5

    iget v5, v5, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 840
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mWinnerIndex:I

    .line 835
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_2
    if-le v3, v1, :cond_3

    .line 845
    const/4 p1, 0x2

    .line 851
    :goto_1
    move v0, p1

    goto :goto_2

    .line 846
    :cond_3
    if-lez v3, :cond_4

    .line 847
    const/4 p1, 0x4

    goto :goto_1

    .line 849
    :cond_4
    nop

    .line 851
    move v0, v2

    :goto_2
    goto :goto_3

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-eqz p1, :cond_6

    .line 852
    nop

    .line 855
    move v0, v1

    :cond_6
    :goto_3
    return v0
.end method

.method private getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initFaceInfoStyle()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    const-string v0, "(\\D+)|(\\d+\\.?\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mSplitFaceInfoPattern:Ljava/util/regex/Pattern;

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    .line 205
    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceAgeFormat:Ljava/lang/String;

    .line 206
    const v1, 0x7f0b0149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceScoreInfoFormat:Ljava/lang/String;

    .line 208
    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    .line 209
    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    .line 210
    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    .line 211
    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    .line 213
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    .line 214
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 217
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 221
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoTextPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 223
    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 225
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mFaceInfoNumberPaint:Landroid/graphics/Paint;

    const v3, 0x3f947ae1    # 1.16f

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    :cond_2
    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    .line 229
    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    .line 231
    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    .line 232
    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mGap:I

    .line 233
    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mCorrection:I

    .line 234
    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    .line 235
    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreHonPadding:I

    .line 236
    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mScoreVerPadding:I

    .line 237
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    .line 238
    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    .line 241
    return-void
.end method

.method private isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z
    .locals 2

    .line 860
    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->prob:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    iget p1, p1, Lcom/android/camera2/CameraHardwareFace;->gender:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private prepareMatrix()V
    .locals 10

    .line 624
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 625
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 626
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 627
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v5

    .line 629
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    .line 630
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_1

    .line 631
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v0, v5

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v0, v1

    .line 635
    :goto_1
    move v4, v0

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v3, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    .line 637
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 638
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 635
    invoke-static/range {v1 .. v9}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    .line 639
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    if-nez v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 641
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCanvasMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 643
    :cond_2
    return-void
.end method

.method private setContentDescription(I)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ui/FaceView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/FaceView$2;-><init>(Lcom/android/camera/ui/FaceView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    return-void
.end method

.method private setCurrentFaceInfos(Landroid/graphics/RectF;Ljava/lang/String;III)V
    .locals 1

    .line 935
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    .line 936
    const-string p1, "FaceView"

    const-string p2, "setCurrentFaceInfos@2: updateInfo=false"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    .line 942
    :cond_1
    new-instance v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-direct {v0}, Lcom/android/camera/watermark/WaterMarkData;-><init>()V

    .line 943
    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setFaceRectF(Landroid/graphics/RectF;)V

    .line 944
    invoke-virtual {v0, p2}, Lcom/android/camera/watermark/WaterMarkData;->setInfo(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, p3}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewWidth(I)V

    .line 946
    invoke-virtual {v0, p4}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewHeight(I)V

    .line 947
    invoke-virtual {v0, p5}, Lcom/android/camera/watermark/WaterMarkData;->setOrientation(I)V

    .line 948
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->determineWatermarkType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setWatermarkType(I)V

    .line 949
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 950
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_2
    return-void
.end method

.method private setCurrentFaceInfos(Landroid/graphics/RectF;ZLjava/lang/String;III)V
    .locals 1

    .line 909
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    .line 910
    const-string p1, "FaceView"

    const-string p2, "setCurrentFaceInfos@1: updateInfo=false"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    .line 916
    :cond_1
    new-instance v0, Lcom/android/camera/watermark/WaterMarkData;

    invoke-direct {v0}, Lcom/android/camera/watermark/WaterMarkData;-><init>()V

    .line 917
    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setFaceRectF(Landroid/graphics/RectF;)V

    .line 918
    invoke-virtual {v0, p2}, Lcom/android/camera/watermark/WaterMarkData;->setFemale(Z)V

    .line 919
    invoke-virtual {v0, p3}, Lcom/android/camera/watermark/WaterMarkData;->setInfo(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p4}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewWidth(I)V

    .line 921
    invoke-virtual {v0, p5}, Lcom/android/camera/watermark/WaterMarkData;->setFaceViewHeight(I)V

    .line 922
    invoke-virtual {v0, p6}, Lcom/android/camera/watermark/WaterMarkData;->setOrientation(I)V

    .line 923
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->determineWatermarkType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/watermark/WaterMarkData;->setWatermarkType(I)V

    .line 924
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    return-void
.end method

.method private setToVisible()V
    .locals 1

    .line 723
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 726
    :cond_0
    return-void
.end method

.method private showNormalFaceRectImmediately()V
    .locals 2

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 315
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method

.method private updateFaceInfos()V
    .locals 2

    .line 872
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-nez v0, :cond_0

    .line 873
    const-string v0, "FaceView"

    const-string v1, "updateFaceInfos: false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 880
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 886
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 888
    :cond_4
    return-void
.end method

.method private updateLatestFaces()V
    .locals 6

    .line 382
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 383
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 384
    nop

    .line 388
    move v0, v1

    goto :goto_0

    .line 386
    :cond_0
    add-int/2addr v0, v2

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_2

    .line 392
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v3, v1

    .line 393
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 394
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v2

    .line 393
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 399
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    aput-object v1, v2, v0

    .line 401
    :goto_2
    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 402
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 546
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->postInvalidate()V

    .line 547
    return-void
.end method

.method public clearFaceFlags()V
    .locals 1

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    .line 551
    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    .line 552
    return-void
.end method

.method public clearPreviousFaces()V
    .locals 3

    .line 568
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 570
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    return-void
.end method

.method public faceExisted()Z
    .locals 4

    .line 505
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 506
    return v1

    .line 508
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    .line 509
    move v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    .line 510
    if-gez v2, :cond_1

    .line 511
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 514
    const/4 v0, 0x1

    return v0

    .line 516
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_3
    return v1
.end method

.method public faceExists()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forceHideRect()V
    .locals 2

    .line 338
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 339
    iput v1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 343
    const/16 v0, 0x8

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    .line 346
    :cond_0
    return-void
.end method

.method public getFaceWaterMarkInfos()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;"
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 956
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I

    move-result v0

    .line 961
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 962
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 963
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 964
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 966
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 967
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 968
    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v5, 0x3ecccccd    # 0.4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 969
    move v7, v3

    goto :goto_1

    .line 968
    :cond_2
    nop

    .line 969
    move v7, v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v8

    .line 970
    new-instance v6, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v6, v3, v4, v5, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 971
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 970
    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/ui/FaceView;->setCurrentFaceInfos(Landroid/graphics/RectF;ZLjava/lang/String;III)V

    .line 972
    nop

    .line 978
    :cond_3
    :goto_2
    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 979
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 980
    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v6

    .line 981
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/FaceView;->setCurrentFaceInfos(Landroid/graphics/RectF;Ljava/lang/String;III)V

    .line 961
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 984
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateFaceInfos()V

    .line 985
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    return-object v0

    .line 957
    :cond_7
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaces()[Lcom/android/camera2/CameraHardwareFace;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    return-object v0
.end method

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 14

    .line 412
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 413
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 417
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 418
    iget-object v2, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->scaleCamera2Matrix(Landroid/graphics/Matrix;Landroid/graphics/Rect;F)V

    .line 420
    iget-object v5, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget-boolean v6, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    iget v7, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    .line 421
    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v9

    .line 422
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getWidth()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->getHeight()I

    move-result v1

    div-int/lit8 v11, v1, 0x2

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 423
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 420
    invoke-static/range {v5 .. v13}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIIIII)V

    .line 424
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mLatestFaceIndex:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 426
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 427
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 428
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 429
    return-object v0

    .line 431
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFaceStable()Z
    .locals 12

    .line 436
    nop

    .line 437
    nop

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v9, v0, v3

    .line 440
    if-nez v9, :cond_0

    .line 441
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_1

    .line 442
    return v2

    .line 447
    :cond_0
    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 448
    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 449
    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v10

    .line 450
    iget-object v9, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 438
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    sub-int/2addr v0, v4

    .line 453
    div-int/2addr v5, v0

    .line 454
    div-int/2addr v6, v0

    .line 455
    div-int/2addr v7, v0

    .line 456
    div-int/2addr v8, v0

    .line 457
    div-int/lit8 v0, v5, 0x3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    .line 458
    goto :goto_1

    .line 460
    :cond_3
    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mLatestFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v9, v1, v4

    .line 461
    if-nez v9, :cond_4

    .line 462
    goto :goto_3

    .line 464
    :cond_4
    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v0, :cond_6

    iget-object v10, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v7

    .line 465
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x78

    if-gt v10, v11, :cond_6

    iget-object v9, v9, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    .line 466
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v11, :cond_5

    goto :goto_4

    .line 460
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 467
    :cond_6
    :goto_4
    return v2

    .line 471
    :cond_7
    const/16 v0, 0x29e

    const/4 v1, 0x1

    if-gt v5, v0, :cond_9

    if-le v6, v0, :cond_8

    goto :goto_5

    :cond_8
    goto :goto_6

    :cond_9
    :goto_5
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Lcom/android/camera/ui/FaceView;->mIsBigEnoughRect:Z

    .line 472
    return v1
.end method

.method public isGroupCapture()Z
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 406
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->onDetachedFromWindow()V

    .line 407
    iget-object v0, p0, Lcom/android/camera/ui/FaceView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    .line 409
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v10, p0

    .line 653
    move-object/from16 v11, p1

    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-eqz v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    invoke-virtual {v10}, Lcom/android/camera/ui/FaceView;->getFaces()[Lcom/android/camera2/CameraHardwareFace;

    move-result-object v0

    iput-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 657
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_c

    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 661
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 662
    iget-boolean v0, v10, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    if-nez v0, :cond_2

    .line 663
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mOrientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 665
    :cond_2
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getPopShowType([Lcom/android/camera2/CameraHardwareFace;)I

    move-result v12

    .line 667
    const/4 v13, 0x0

    move v14, v13

    :goto_0
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v0, v0

    if-ge v14, v0, :cond_b

    .line 668
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v14

    iget-object v1, v1, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 677
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    iget-object v0, v0, Lcom/android/camera2/CameraHardwareFace;->rect:Landroid/graphics/Rect;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v0, v1}, Lcom/android/camera/ui/FaceView;->transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 679
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v14

    invoke-direct {v10, v11, v0, v12, v1}, Lcom/android/camera/ui/FaceView;->drawFaceRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILcom/android/camera2/CameraHardwareFace;)V

    .line 681
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v12, v0, :cond_8

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_8

    .line 695
    :pswitch_0
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    iget v0, v0, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    .line 696
    goto/16 :goto_8

    .line 699
    :cond_3
    invoke-direct {v10}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 700
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    .line 701
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    .line 700
    move-object v0, v10

    move-object v1, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    .line 705
    goto/16 :goto_8

    .line 683
    :pswitch_1
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->isValidAGInfo(Lcom/android/camera2/CameraHardwareFace;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 684
    invoke-direct {v10}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 685
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    iget v0, v0, Lcom/android/camera2/CameraHardwareFace;->gender:F

    const v1, 0x3ecccccd    # 0.4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 686
    const/4 v0, 0x1

    goto :goto_1

    .line 685
    :cond_4
    nop

    .line 686
    move v0, v13

    :goto_1
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v1, v1, v14

    invoke-direct {v10, v1}, Lcom/android/camera/ui/FaceView;->getAgeInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    .line 687
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_5

    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexFemaleIc:Landroid/graphics/drawable/Drawable;

    :goto_2
    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mSexMaleIc:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_6

    .line 688
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mFemaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    .line 689
    :goto_4
    move-object v4, v1

    goto :goto_5

    .line 688
    :cond_6
    iget-object v1, v10, Lcom/android/camera/ui/FaceView;->mMaleAgeInfoPop:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 689
    :goto_5
    if-eqz v0, :cond_7

    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    :goto_6
    move v6, v0

    goto :goto_7

    :cond_7
    iget v0, v10, Lcom/android/camera/ui/FaceView;->mAgeMaleHonPadding:I

    goto :goto_6

    :goto_7
    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    .line 687
    move-object v0, v10

    move-object v1, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    .line 691
    goto :goto_8

    .line 708
    :cond_8
    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    iget v0, v0, Lcom/android/camera2/CameraHardwareFace;->beautyscore:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    .line 709
    goto :goto_8

    .line 711
    :cond_9
    invoke-direct {v10}, Lcom/android/camera/ui/FaceView;->initFaceInfoStyle()V

    .line 712
    iget-object v2, v10, Lcom/android/camera/ui/FaceView;->mRect:Landroid/graphics/RectF;

    iget-object v3, v10, Lcom/android/camera/ui/FaceView;->mBeautyScoreIc:Landroid/graphics/drawable/Drawable;

    iget-object v4, v10, Lcom/android/camera/ui/FaceView;->mMagicMirrorInfoPop:Landroid/graphics/drawable/Drawable;

    iget-object v0, v10, Lcom/android/camera/ui/FaceView;->mDrawingFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object v0, v0, v14

    .line 713
    invoke-direct {v10, v0}, Lcom/android/camera/ui/FaceView;->getScoreInfo(Lcom/android/camera2/CameraHardwareFace;)Ljava/lang/String;

    move-result-object v5

    iget v6, v10, Lcom/android/camera/ui/FaceView;->mAgeFemaleHonPadding:I

    iget v7, v10, Lcom/android/camera/ui/FaceView;->mAgeVerPadding:I

    iget v8, v10, Lcom/android/camera/ui/FaceView;->mFacePopupBottom:I

    iget v9, v10, Lcom/android/camera/ui/FaceView;->mPopBottomMargin:I

    .line 712
    move-object v0, v10

    move-object v1, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ui/FaceView;->drawFacePopInfo(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;IIII)V

    .line 667
    :cond_a
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 719
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 720
    return-void

    .line 658
    :cond_c
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .line 556
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 557
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->clearPreviousFaces()V

    .line 558
    return-void
.end method

.method public reShowFaceRect()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 352
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 563
    invoke-super {p0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 564
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraFaceDetectionAutoHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    .line 565
    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 3

    .line 477
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mCameraDisplayOrientation:I

    .line 478
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public setFaceRectVisible(II)V
    .locals 2

    .line 357
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->cancelHideAnimator()V

    .line 358
    if-nez p2, :cond_1

    .line 359
    iget-object p2, p0, Lcom/android/camera/ui/FaceView;->mNormalRectPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    return-void

    .line 363
    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    .line 364
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    new-instance v0, Lcom/android/camera/ui/FaceView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FaceView$3;-><init>(Lcom/android/camera/ui/FaceView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 373
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 374
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaceRectHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 375
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setFaces([Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;F)Z
    .locals 4

    .line 244
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of faces = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p1

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-eqz v0, :cond_1

    .line 246
    return v2

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    goto :goto_1

    .line 250
    :cond_2
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v1

    goto :goto_2

    .line 251
    :cond_3
    move v1, v2

    :goto_2
    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    .line 254
    move v2, v3

    goto :goto_3

    .line 251
    :cond_4
    nop

    .line 254
    :goto_3
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 255
    return v3

    .line 258
    :cond_5
    iput-object p1, p0, Lcom/android/camera/ui/FaceView;->mFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 259
    iput-object p2, p0, Lcom/android/camera/ui/FaceView;->mActiveArraySize:Landroid/graphics/Rect;

    .line 260
    iput p3, p0, Lcom/android/camera/ui/FaceView;->mZoomValue:F

    .line 261
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->updateLatestFaces()V

    .line 262
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->prepareMatrix()V

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->postInvalidate()V

    .line 266
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_b

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    if-eqz p1, :cond_6

    goto :goto_5

    .line 273
    :cond_6
    if-eqz v2, :cond_8

    .line 274
    if-lez v0, :cond_7

    .line 275
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 277
    :cond_7
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 278
    invoke-direct {p0, v0}, Lcom/android/camera/ui/FaceView;->setContentDescription(I)V

    .line 282
    :cond_8
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mIsCameraFaceDetectionAutoHidden:Z

    if-eqz p1, :cond_a

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 284
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    .line 285
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->attemptHideFaceRect()V

    goto :goto_4

    .line 288
    :cond_9
    iget p1, p0, Lcom/android/camera/ui/FaceView;->mRectState:I

    if-eq p1, v3, :cond_a

    .line 289
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->clearAttemptHideFaceRect()V

    .line 294
    :cond_a
    :goto_4
    return v3

    .line 269
    :cond_b
    :goto_5
    return v3
.end method

.method public setLightingOn(Z)V
    .locals 2

    .line 495
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    .line 496
    const-string p1, "FaceView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLightingOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mLightingOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method public setMirror(Z)V
    .locals 3

    .line 490
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mMirror:Z

    .line 491
    const-string v0, "FaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/android/camera/ui/FaceView;->mOrientation:I

    .line 484
    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mPause:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    if-nez p1, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 487
    :cond_0
    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 2

    .line 576
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 577
    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowGenderAndAge:Z

    .line 578
    if-eqz v0, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 581
    :cond_1
    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setShowMagicMirror(Z)V

    .line 584
    :cond_2
    return-void
.end method

.method public setShowMagicMirror(Z)V
    .locals 2

    .line 587
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 588
    :cond_0
    move v0, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mShowMagicMirror:Z

    .line 589
    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->showNormalFaceRectImmediately()V

    .line 592
    :cond_1
    if-eqz p1, :cond_2

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Z)V

    .line 595
    :cond_2
    return-void
.end method

.method public setShutterStatus(Z)V
    .locals 2

    .line 989
    iget-boolean v0, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    if-eq v0, p1, :cond_2

    .line 990
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    .line 991
    if-nez p1, :cond_2

    .line 992
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 993
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCurrentWaterMarkDataInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 995
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 996
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mWaterInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 998
    :cond_1
    const-string p1, "FaceView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShutterStatus: updateInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ui/FaceView;->mIsUpdateFaceInfos:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_2
    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lcom/android/camera/ui/FaceView;->mSkipDraw:Z

    .line 609
    return-void
.end method

.method public showFail()V
    .locals 0

    .line 535
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 536
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 537
    return-void
.end method

.method public showStart()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 524
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 525
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .line 529
    invoke-direct {p0}, Lcom/android/camera/ui/FaceView;->setToVisible()V

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/ui/FaceView;->invalidate()V

    .line 531
    return-void
.end method

.method public transToViewRect(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 0

    .line 646
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 647
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mCamera2TranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 648
    iget-object p1, p0, Lcom/android/camera/ui/FaceView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 649
    return-void
.end method
