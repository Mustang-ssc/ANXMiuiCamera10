.class public Lcom/android/camera2/MiCamera2ShotParallelStill;
.super Lcom/android/camera2/MiCamera2Shot;
.source "MiCamera2ShotParallelStill.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2Shot<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParallelStill"


# instance fields
.field private mAlgoType:I

.field private mCapturedImageSize:Lcom/android/camera/CameraSize;

.field private mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mShouldDoQcfaCapture:Z

.field private mStillCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Lcom/android/camera2/MiCamera2;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2Shot;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 52
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelStill;)Lcom/android/camera/CameraSize;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mCapturedImageSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelStill;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelStill;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mStillCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/camera2/MiCamera2ShotParallelStill;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mStillCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method private configParallelSession(Landroid/util/Size;)V
    .locals 6

    .line 232
    nop

    .line 233
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isPortraitModule()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    const v2, 0x8002

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 236
    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZZ)V

    goto :goto_0

    .line 238
    :cond_0
    new-instance v0, Lcom/xiaomi/engine/GraphDescriptorBean;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 240
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v3

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/xiaomi/engine/GraphDescriptorBean;-><init>(IIZZ)V

    .line 243
    :goto_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 244
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 245
    const-string v3, "ParallelStill"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[QCFA] configParallelSession: pictureSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v3, Lcom/xiaomi/engine/BufferFormat;

    const/16 v4, 0x23

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/xiaomi/engine/BufferFormat;-><init>(IIILcom/xiaomi/engine/GraphDescriptorBean;)V

    .line 248
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;)V

    .line 250
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, p1}, Lcom/android/camera/CameraSize;-><init>(Landroid/util/Size;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mCapturedImageSize:Lcom/android/camera/CameraSize;

    .line 251
    return-void
.end method


# virtual methods
.method protected generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 99
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelStill$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelStill$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelStill;)V

    return-object v0
.end method

.method protected generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 152
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getRemoteSurfaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 157
    nop

    .line 158
    nop

    .line 159
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    .line 160
    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getRemoteSurfaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v2

    move-object v2, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 161
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v9

    .line 162
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 163
    nop

    .line 164
    add-int/lit8 v7, v7, -0x1

    .line 170
    move-object v6, v8

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v10

    div-int/2addr v10, v1

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 166
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v10

    div-int/2addr v10, v1

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-ne v10, v9, :cond_1

    .line 167
    nop

    .line 168
    add-int/lit8 v7, v7, -0x1

    .line 170
    move-object v2, v8

    :cond_1
    :goto_1
    goto :goto_0

    .line 171
    :cond_2
    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    if-nez v7, :cond_4

    .line 178
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v1, :cond_3

    .line 179
    move-object v2, v6

    :cond_3
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    .line 180
    const-string v4, "ParallelStill"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[QCFA] generateRequestBuilder: surface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelStill;->configParallelSession(Landroid/util/Size;)V

    .line 182
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 184
    goto :goto_3

    .line 172
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is some wrong when QCFA opened! \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v3, v8

    const/4 v6, 0x1

    aput-object v2, v3, v6

    .line 175
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 173
    const-string v1, "qcfaLargerSurface = %s; qcfaSmallerSurface = %s; surfaceList size = %s"

    invoke-static {v5, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getRemoteSurfaceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 186
    const-string v4, "ParallelStill"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add surface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to capture request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 188
    goto :goto_2

    .line 189
    :cond_6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mCapturedImageSize:Lcom/android/camera/CameraSize;

    .line 190
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 193
    :goto_3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 194
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 213
    return-object v0
.end method

.method protected notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    .line 224
    return-void
.end method

.method protected bridge synthetic notifyResultData(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelStill;->notifyResultData(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method protected onImageReceived(Landroid/media/Image;I)V
    .locals 0

    .line 219
    return-void
.end method

.method protected prepare()V
    .locals 5

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    .line 64
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 66
    const-string v2, "ParallelStill"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[QCFA] prepare: iso="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 71
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 72
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->isFrontBeautyOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    .line 73
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mShouldDoQcfaCapture:Z

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mAlgoType:I

    .line 76
    :cond_1
    return-void
.end method

.method protected startSessionCapture()V
    .locals 4

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackPictureCapture(I)V

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelStill;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "ParallelStill"

    const-string v2, "Failed to capture a still picture, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2;->notifyOnError(I)V

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 89
    const-string v1, "ParallelStill"

    const-string v2, "Cannot capture a still picture"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelStill;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/MiCamera2;->notifyOnError(I)V

    .line 94
    :goto_0
    nop

    .line 95
    :goto_1
    return-void
.end method
