.class Lcom/xiaomi/camera/core/SingleCameraProcessor$2;
.super Ljava/lang/Object;
.source "SingleCameraProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/core/SingleCameraProcessor;->configOutputSurfaces(Lcom/xiaomi/engine/BufferFormat;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/core/SingleCameraProcessor;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaomi/camera/core/SingleCameraProcessor$2;->this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/xiaomi/camera/core/SingleCameraProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configOutputSurfaces onImageAvailable: effectImage received"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/xiaomi/camera/core/SingleCameraProcessor$2;->this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v0, v0, Lcom/xiaomi/camera/core/SingleCameraProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaomi/camera/core/SingleCameraProcessor$2;->this$0:Lcom/xiaomi/camera/core/SingleCameraProcessor;

    iget-object v0, v0, Lcom/xiaomi/camera/core/SingleCameraProcessor;->mImageProcessorStatusCallback:Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/camera/core/ImageProcessor$ImageProcessorStatusCallback;->onImageProcessed(Landroid/media/Image;I)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 80
    return-void
.end method
