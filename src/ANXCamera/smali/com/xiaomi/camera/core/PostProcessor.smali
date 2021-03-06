.class public Lcom/xiaomi/camera/core/PostProcessor;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;,
        Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;,
        Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

.field private mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

.field private mCurrentAlgoType:I

.field private mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

.field private mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

.field private mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

.field private mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

.field private mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

.field private mImageReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

.field private mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/camera/core/ParallelTaskData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

.field private mSessionStatusCallback:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

.field private mShouldDestroyWhenTasksFinished:Z

.field private mSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskSession:Lcom/xiaomi/engine/TaskSession;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    .line 57
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CallbackHandleThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    .line 68
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    .line 76
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCurrentAlgoType:I

    .line 78
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    .line 83
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$1;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$1;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCallback:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    .line 152
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$2;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$2;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    .line 184
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$3;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$3;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    .line 274
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$4;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    .line 344
    new-instance p1, Lcom/xiaomi/camera/core/PostProcessor$5;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor$5;-><init>(Lcom/xiaomi/camera/core/PostProcessor;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    .line 377
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    .line 379
    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    .line 380
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->init()V

    .line 381
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/core/PostProcessor;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/core/PostProcessor;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCurrentAlgoType:I

    return p0
.end method

.method static synthetic access$302(Lcom/xiaomi/camera/core/PostProcessor;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCurrentAlgoType:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mDataListener:Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageMemoryManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/CaptureDataListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureDataListener:Lcom/xiaomi/camera/core/CaptureDataListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mJpegEncoderListener:Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/camera/core/PostProcessor;)Lcom/xiaomi/camera/core/FilterProcessor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    return-object p0
.end method

.method private tryToCloseSession()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    if-eqz v0, :cond_1

    .line 513
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {v0}, Lcom/xiaomi/engine/TaskSession;->close()V

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->finish()V

    .line 518
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->deInit()V

    .line 519
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mPostProcessStatusCallback:Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    invoke-interface {v0, p0}, Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    goto :goto_0

    .line 523
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v1, "tryToCloseSession: ignore"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addCapturePath(Ljava/lang/String;)V
    .locals 3

    .line 491
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCapturePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public configCaptureSession(Lcom/xiaomi/engine/BufferFormat;I)V
    .locals 3

    .line 454
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/engine/GraphDescriptorBean;->getOperationModeID()I

    move-result p2

    .line 455
    const v0, 0x8002

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->goOffWork()V

    .line 459
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 463
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getGraphDescriptor()Lcom/xiaomi/engine/GraphDescriptorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/engine/GraphDescriptorBean;->getStreamNumber()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    if-eqz p2, :cond_2

    .line 464
    new-instance p2, Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {p2, v0}, Lcom/xiaomi/camera/core/DualCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;)V

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 465
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V

    .line 467
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 468
    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;

    move-result-object p2

    .line 469
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCallback:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {p1, p2, v0}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 471
    goto :goto_1

    .line 472
    :cond_2
    new-instance p2, Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    invoke-direct {p2, v0}, Lcom/xiaomi/camera/core/SingleCameraProcessor;-><init>(Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;)V

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 473
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ImageProcessor;->startWork()V

    .line 475
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    .line 476
    invoke-virtual {p2, p1}, Lcom/xiaomi/camera/core/ImageProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;

    move-result-object p2

    .line 477
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSessionStatusCallback:Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;

    invoke-static {p1, p2, v0}, Lcom/xiaomi/engine/MiCameraAlgo;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    .line 480
    :goto_1
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mTaskSession:Lcom/xiaomi/engine/TaskSession;

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/ImageProcessor;->setTaskSession(Lcom/xiaomi/engine/TaskSession;)V

    .line 482
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz p2, :cond_3

    .line 483
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/FilterProcessor;->deInit()V

    .line 484
    iput-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 486
    :cond_3
    new-instance p2, Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-direct {p2}, Lcom/xiaomi/camera/core/FilterProcessor;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 487
    iget-object p2, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/engine/BufferFormat;->getBufferHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/camera/core/FilterProcessor;->init(Landroid/util/Size;)V

    .line 488
    return-void
.end method

.method public configHALOutputSurface(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configHALOutputSurface: paramsNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 420
    :cond_1
    const/4 v0, 0x0

    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 422
    invoke-virtual {v1}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isShouldHoldImages()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    iget v2, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    add-int/2addr v0, v2

    .line 425
    :cond_2
    iget v2, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v3, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v4, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v5, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    .line 426
    new-instance v3, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;

    iget v1, v1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->targetCamera:I

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/camera/core/PostProcessor$ImageAvailableListener;-><init>(Lcom/xiaomi/camera/core/PostProcessor;I)V

    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 427
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    goto :goto_0

    .line 430
    :cond_3
    new-instance p1, Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-direct {p1, v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    .line 431
    iget-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object p1
.end method

.method public deInit()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/FilterProcessor;->deInit()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mFilterProcessor:Lcom/xiaomi/camera/core/FilterProcessor;

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 395
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 396
    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageReaderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 403
    :cond_3
    return-void
.end method

.method public destroyWhenTasksFinished()V
    .locals 1

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mShouldDestroyWhenTasksFinished:Z

    .line 545
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToCloseSession()V

    .line 546
    return-void
.end method

.method public finish()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageProcessor:Lcom/xiaomi/camera/core/ImageProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageProcessor;->goOffWork()V

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerThread:Landroid/os/HandlerThread;

    .line 503
    iput-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mWorkerHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 506
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    const-string v2, "finish: failed!"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_1
    :goto_0
    return-void
.end method

.method public getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mCaptureStatusListener:Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    return-object v0
.end method

.method public getSurfaceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mSurfaceList:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 385
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mParallelTaskHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public needWaitImageClose()Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageMemoryManager:Lcom/xiaomi/camera/core/ImageMemoryManager;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/ImageMemoryManager;->needWaitImageClose()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    sget-object v1, Lcom/xiaomi/camera/core/PostProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needWaitImageClose: return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/xiaomi/camera/core/PostProcessor;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 541
    return-void
.end method
