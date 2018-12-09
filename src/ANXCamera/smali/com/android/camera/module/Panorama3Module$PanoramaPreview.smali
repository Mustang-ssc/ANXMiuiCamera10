.class Lcom/android/camera/module/Panorama3Module$PanoramaPreview;
.super Lcom/android/camera/panorama/PanoramaState;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoramaPreview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;,
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;
    }
.end annotation


# instance fields
.field private mDetector:Lcom/android/camera/panorama/PositionDetector;

.field private mHasSubmit:Z

.field private mPreviewImgHeight:I

.field private mPreviewImgWidth:I

.field private final mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 20
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    move-object/from16 v0, p0

    .line 2020
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/panorama/PanoramaState;-><init>()V

    .line 2013
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    .line 2014
    iput v2, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    .line 2016
    new-instance v3, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V

    iput-object v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    .line 2021
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/panorama/DirectionFunction;->getScale()I

    move-result v3

    .line 2022
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/panorama/DirectionFunction;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 2023
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "previewSize %dx%d, scale %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 2024
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v8, v9

    .line 2023
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    nop

    .line 2026
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    .line 2027
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    .line 2029
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreviewImgWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPreviewImgHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$1200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    iget v5, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setPreviewImage(II)I

    move-result v3

    .line 2032
    if-eqz v3, :cond_0

    .line 2033
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "setPreviewImage error ret:0x%08X"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 2038
    if-eqz v2, :cond_1

    .line 2039
    new-instance v13, Lcom/android/camera/panorama/PositionDetector;

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3900(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getPreivewContainer()Landroid/view/ViewGroup;

    move-result-object v5

    const/4 v6, 0x0

    iget v7, v1, Lcom/android/camera/module/Panorama3Module;->mCameraDisplayOrientation:I

    .line 2040
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$2700(Lcom/android/camera/module/Panorama3Module;)I

    move-result v8

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$2800(Lcom/android/camera/module/Panorama3Module;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/panorama/DirectionFunction;->getDirection()I

    move-result v10

    .line 2041
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$4000(Lcom/android/camera/module/Panorama3Module;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3000(Lcom/android/camera/module/Panorama3Module;)I

    move-result v12

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/panorama/PositionDetector;-><init>(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;Landroid/view/ViewGroup;ZIIIIII)V

    iput-object v13, v0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    .line 2043
    nop

    .line 2044
    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$1300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$3900(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    move-result-object v2

    iget v15, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$5000(Lcom/android/camera/module/Panorama3Module;)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/camera/module/Panorama3Module;->access$5100(Lcom/android/camera/module/Panorama3Module;)F

    move-result v18

    const/16 v19, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v19}, Lcom/android/camera/panorama/RoundDetector;->setStartPosition(IIFFZ)V

    .line 2047
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->allocateDisplayBuffers()V

    .line 2049
    :cond_1
    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;I)V
    .locals 0

    .line 2011
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->attachEnd(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/panorama/PositionDetector;
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mDetector:Lcom/android/camera/panorama/PositionDetector;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;)Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mUiUpdateRunnable:Lcom/android/camera/module/Panorama3Module$PanoramaPreview$UiUpdateRunnable;

    return-object p0
.end method

.method private allocateDisplayBuffers()V
    .locals 5

    .line 2052
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$800()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2053
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 2054
    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 2055
    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    if-eq v1, v2, :cond_1

    .line 2056
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2057
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$902(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2058
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2059
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$1002(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2062
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2063
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgWidth:I

    iget v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mPreviewImgHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$902(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2064
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$3100(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$1002(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2065
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v2}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$2700(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$2800(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$5202(Lcom/android/camera/module/Panorama3Module;I)I

    .line 2066
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAttachPosOffsetY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$5200(Lcom/android/camera/module/Panorama3Module;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v3}, Lcom/android/camera/module/Panorama3Module;->access$1000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$5302(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 2069
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1, v2}, Lcom/android/camera/module/Panorama3Module;->access$5402(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 2070
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v1}, Lcom/android/camera/module/Panorama3Module;->access$5400(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2072
    :cond_2
    monitor-exit v0

    .line 2073
    return-void

    .line 2072
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private attachEnd(I)V
    .locals 1

    .line 2087
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$5600(Lcom/android/camera/module/Panorama3Module;)V

    .line 2088
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$200(Lcom/android/camera/module/Panorama3Module;)V

    .line 2089
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->listener:Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/panorama/PanoramaState$IPanoramaStateEventListener;->requestEnd(Lcom/android/camera/panorama/PanoramaState;I)V

    .line 2091
    if-nez p1, :cond_0

    .line 2092
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/module/Panorama3Module;->access$5700(Lcom/android/camera/module/Panorama3Module;Z)V

    .line 2094
    :cond_0
    return-void
.end method


# virtual methods
.method public onSaveImage(Lcom/android/camera/panorama/CaptureImage;)Z
    .locals 3

    .line 2077
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/Panorama3Module;->access$4600(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V

    .line 2078
    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mHasSubmit:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2079
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "submit PreviewAttach"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$4800(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/Panorama3Module$PanoramaPreview$PreviewAttach;-><init>(Lcom/android/camera/module/Panorama3Module$PanoramaPreview;Lcom/android/camera/module/Panorama3Module$1;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2081
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module$PanoramaPreview;->mHasSubmit:Z

    .line 2083
    :cond_0
    return v0
.end method
