.class Lcom/xiaomi/camera/core/DualCameraProcessor$3;
.super Ljava/lang/Object;
.source "DualCameraProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/DualCameraProcessor;->configOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/DualCameraProcessor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaomi/camera/core/DualCameraProcessor$3;->this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 90
    const-string v0, "[   DEPTH]"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/base/PerformanceTracker;->trackAlgorithmProcess(Ljava/lang/String;I)V

    .line 91
    invoke-static {}, Lcom/xiaomi/camera/core/DualCameraProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAvailable: depthImage received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/xiaomi/camera/core/DualCameraProcessor$3;->this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v0, v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaomi/camera/core/DualCameraProcessor$3;->this$0:Lcom/xiaomi/camera/core/DualCameraProcessor;

    iget-object v0, v0, Lcom/xiaomi/camera/core/DualCameraProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;I)V

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 96
    return-void
.end method
