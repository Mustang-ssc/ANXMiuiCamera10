.class Lcom/android/camera/module/VideoModule$4;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->stopRecorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1457
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$202(Lcom/android/camera/module/VideoModule;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 1458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1459
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/statistic/ScenarioTrackUtil;->trackStopVideoRecordStart(Ljava/lang/String;Z)V

    .line 1461
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1462
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1463
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    goto :goto_0

    .line 1464
    :catch_0
    move-exception v3

    .line 1465
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    const-string v5, "failed to stop media recorder"

    invoke-static {v4, v5, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1466
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1467
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1468
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v2, v3, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1472
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v3, v3, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1473
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 1475
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)V

    .line 1476
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1477
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-wide v3, v3, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long/2addr v0, v3

    .line 1480
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoNewSlowMotion()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1481
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1482
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "fps120"

    :goto_1
    move-object v4, v3

    goto :goto_2

    :cond_3
    const-string v3, "fps240"

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    .line 1483
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)I

    move-result v5

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v6

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)I

    move-result v7

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    .line 1482
    invoke-static/range {v4 .. v9}, Lcom/android/camera/statistic/CameraStatUtil;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    .line 1488
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$1000(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1490
    const-wide/16 v3, 0x7d0

    sub-long/2addr v3, v0

    .line 1491
    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gtz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 1504
    :cond_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    .line 1505
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1506
    if-eqz v0, :cond_6

    .line 1508
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingPostAction()V

    .line 1510
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1511
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/camera/module/VideoModule;->access$1200(Lcom/android/camera/module/VideoModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1512
    sget-object v4, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    if-nez v3, :cond_7

    .line 1514
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v2, v0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1515
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v2, v0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1517
    const-string v0, "counter"

    const-string v1, "fps_960_process_failed"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1520
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v3, v0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1521
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v4, "fps960"

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)I

    move-result v5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 1523
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getFlashMode()I

    move-result v6

    const/16 v7, 0x3c0

    const-wide/16 v8, 0xa

    .line 1522
    invoke-static/range {v4 .. v9}, Lcom/android/camera/statistic/CameraStatUtil;->trackNewSlowMotionVideoRecorded(Ljava/lang/String;IIIJ)V

    goto :goto_4

    .line 1497
    :cond_8
    :goto_3
    sget-object v3, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uncomplete video.="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$4;->this$0:Lcom/android/camera/module/VideoModule;

    iput-object v2, v0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1501
    const-string v0, "counter"

    const-string v1, "fps_960_too_short"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_9
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 1528
    return-void
.end method
