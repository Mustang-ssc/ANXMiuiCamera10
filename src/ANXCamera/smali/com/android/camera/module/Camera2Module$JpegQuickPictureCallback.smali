.class final Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;
.super Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;
.source "Camera2Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field mBurstShotTitle:Ljava/lang/String;

.field mDropped:Z

.field mLocation:Landroid/location/Location;

.field mPressDownTitle:Ljava/lang/String;

.field mSavedJpegCallbackNum:I

.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Landroid/location/Location;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Lcom/android/camera2/Camera2Proxy$PictureCallbackWrapper;-><init>()V

    .line 1380
    iput-object p2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 1381
    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 6

    .line 1384
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$500(Lcom/android/camera/module/Camera2Module;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    if-ne v0, v1, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1390
    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 1391
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x13

    if-eq v0, v4, :cond_1

    .line 1392
    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 1395
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    iget-object v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_UBIFOCUS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1398
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_BURST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    return-object v0
.end method


# virtual methods
.method public onPictureTaken([B)V
    .locals 23

    move-object/from16 v0, p0

    .line 1403
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-boolean v1, v1, Lcom/android/camera/module/Camera2Module;->mPaused:Z

    if-nez v1, :cond_13

    if-eqz p1, :cond_13

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1405
    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v3}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v3

    if-ge v2, v3, :cond_13

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1406
    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 1410
    :cond_0
    iget v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1412
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1413
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    const/4 v15, 0x0

    if-eqz v2, :cond_4

    .line 1418
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$900(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1419
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/module/Camera2Module;->trackGeneralInfo(IZ)V

    .line 1420
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_2

    move v15, v3

    nop

    :cond_2
    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$2700(Lcom/android/camera/module/Camera2Module;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v15, v4}, Lcom/android/camera/module/Camera2Module;->trackPictureTaken(IZZLjava/lang/String;)V

    .line 1421
    iget-object v0, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)V

    .line 1423
    :cond_3
    return-void

    .line 1427
    :cond_4
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$604(Lcom/android/camera/module/Camera2Module;)I

    .line 1429
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1430
    iget v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    .line 1431
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1432
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/Camera2Module;->playCameraSound(I)V

    .line 1435
    :cond_5
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$000(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object v2

    iget v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 1437
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1438
    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    if-gt v2, v4, :cond_6

    .line 1439
    move/from16 v16, v3

    goto :goto_0

    .line 1438
    :cond_6
    nop

    .line 1439
    move/from16 v16, v15

    :goto_0
    if-eqz v16, :cond_7

    .line 1441
    move v14, v15

    goto :goto_1

    .line 1439
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v2

    .line 1441
    move v14, v2

    :goto_1
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$2300(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    add-int/2addr v2, v14

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_8

    .line 1442
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    .line 1443
    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/Camera2Module;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v4

    .line 1449
    :goto_2
    move v11, v2

    move v12, v4

    goto :goto_3

    .line 1445
    :cond_8
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    .line 1446
    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v4, v4, Lcom/android/camera/module/Camera2Module;->mPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    goto :goto_2

    .line 1449
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    .line 1450
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1451
    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_9

    .line 1453
    move/from16 v17, v3

    goto :goto_4

    .line 1451
    :cond_9
    nop

    .line 1453
    move/from16 v17, v15

    :goto_4
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    if-eq v2, v4, :cond_e

    .line 1455
    :cond_a
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 1456
    nop

    .line 1465
    :goto_5
    move v4, v15

    goto :goto_7

    .line 1457
    :cond_b
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    if-eq v2, v4, :cond_d

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1458
    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-boolean v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v2, :cond_c

    goto :goto_6

    .line 1462
    :cond_c
    goto :goto_5

    .line 1460
    :cond_d
    :goto_6
    nop

    .line 1465
    move v4, v3

    :goto_7
    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v2, v2, Lcom/android/camera/module/Camera2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v2

    const/4 v6, 0x0

    .line 1470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    const/4 v13, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v3, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    .line 1483
    invoke-static {v3}, Lcom/android/camera/module/Camera2Module;->access$1800(Lcom/android/camera/module/Camera2Module;)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v22

    .line 1465
    move-object/from16 v3, p1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    invoke-virtual/range {v2 .. v21}, Lcom/android/camera/storage/ImageSaver;->addImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V

    .line 1484
    iput-boolean v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    .line 1486
    :cond_e
    goto :goto_8

    .line 1487
    :cond_f
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$1300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptureBurst queue full and drop "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v4}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iput-boolean v3, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    .line 1490
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    if-lt v1, v2, :cond_10

    .line 1491
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v1, v1, Lcom/android/camera/module/Camera2Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached()V

    .line 1495
    :cond_10
    :goto_8
    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$600(Lcom/android/camera/module/Camera2Module;)I

    move-result v1

    iget-object v2, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v2}, Lcom/android/camera/module/Camera2Module;->access$800(Lcom/android/camera/module/Camera2Module;)I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v1}, Lcom/android/camera/module/Camera2Module;->access$1000(Lcom/android/camera/module/Camera2Module;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v1, :cond_12

    .line 1496
    :cond_11
    iget-object v0, v0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)V

    .line 1498
    :cond_12
    return-void

    .line 1407
    :cond_13
    :goto_9
    return-void
.end method

.method public onPictureTakenFinished(Z)V
    .locals 0

    .line 1502
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$2600(Lcom/android/camera/module/Camera2Module;)V

    .line 1503
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {p1}, Lcom/android/camera/module/Camera2Module;->access$000(Lcom/android/camera/module/Camera2Module;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 1504
    return-void
.end method
