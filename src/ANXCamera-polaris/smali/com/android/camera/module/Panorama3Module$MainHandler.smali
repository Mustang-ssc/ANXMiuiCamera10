.class Lcom/android/camera/module/Panorama3Module$MainHandler;
.super Landroid/os/Handler;
.source "Panorama3Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/module/Panorama3Module$1;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module$MainHandler;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 321
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Panorama3Module;->isCreated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0, v1}, Lcom/android/camera/module/Panorama3Module$MainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 323
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Panorama3Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 327
    return-void

    .line 330
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x80

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/16 v4, 0x11

    if-eq v0, v4, :cond_6

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_5

    const/16 v1, 0x33

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 332
    sget-boolean v0, Lcom/android/camera/module/BaseModule;->DEBUG:Z

    if-nez v0, :cond_2

    .line 335
    invoke-static {}, Lcom/android/camera/module/Panorama3Module;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no consumer for this message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no consumer for this message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iput-boolean v3, p1, Lcom/android/camera/module/Panorama3Module;->mOpenCameraFail:Z

    .line 354
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Panorama3Module;->onCameraException()V

    .line 355
    goto :goto_1

    .line 365
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->width:I

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object v0, v0, Lcom/android/camera/module/Panorama3Module;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result p1

    .line 366
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget v0, v0, Lcom/android/camera/module/Panorama3Module;->mUIStyle:I

    if-eq p1, v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iput p1, v0, Lcom/android/camera/module/Panorama3Module;->mUIStyle:I

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$200(Lcom/android/camera/module/Panorama3Module;)V

    .line 370
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p1}, Lcom/android/camera/module/Panorama3Module;->access$300(Lcom/android/camera/module/Panorama3Module;)V

    .line 371
    goto :goto_1

    .line 358
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result p1

    if-nez p1, :cond_8

    .line 359
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iput-boolean v3, p1, Lcom/android/camera/module/Panorama3Module;->mOpenCameraFail:Z

    .line 360
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Panorama3Module;->onCameraException()V

    goto :goto_1

    .line 374
    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1, v1}, Lcom/android/camera/module/Panorama3Module;->setActivity(Lcom/android/camera/Camera;)V

    goto :goto_1

    .line 344
    :cond_6
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Panorama3Module;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 347
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    iget-object p1, p1, Lcom/android/camera/module/Panorama3Module;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    .line 348
    invoke-virtual {v0}, Lcom/android/camera/module/Panorama3Module;->getScreenDelay()I

    move-result v0

    int-to-long v0, v0

    .line 347
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 349
    goto :goto_1

    .line 339
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module$MainHandler;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-virtual {p1}, Lcom/android/camera/module/Panorama3Module;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 340
    nop

    .line 378
    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
