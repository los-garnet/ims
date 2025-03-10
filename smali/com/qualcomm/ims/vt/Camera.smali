.class public abstract Lcom/qualcomm/ims/vt/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/Camera$Listener;,
        Lcom/qualcomm/ims/vt/Camera$CameraException;,
        Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCall_Camera"


# instance fields
.field protected mCameraId:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mListener:Lcom/qualcomm/ims/vt/Camera$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera;->mCameraId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/qualcomm/ims/vt/Camera;->mListener:Lcom/qualcomm/ims/vt/Camera$Listener;

    .line 30
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 255
    const-string v0, "VideoCall_Camera"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method protected static logNotSupported(Ljava/lang/String;)V
    .locals 2
    .param p0, "fn"    # Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCall_Camera"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 259
    const-string v0, "VideoCall_Camera"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method


# virtual methods
.method public abstract canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z
.end method

.method public abstract close()V
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMaxZoom()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getMinZoom()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getPreviewSize()Landroid/util/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getSensorOrientation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract isFacingFront()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public abstract isRecordingStarted()Z
.end method

.method public abstract isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z
.end method

.method public abstract isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z
.end method

.method public abstract isZoomSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method protected notifyOnError(I)V
    .locals 1
    .param p1, "error"    # I

    .line 249
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera;->mListener:Lcom/qualcomm/ims/vt/Camera$Listener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera;->mListener:Lcom/qualcomm/ims/vt/Camera$Listener;

    invoke-interface {v0, p0, p1}, Lcom/qualcomm/ims/vt/Camera$Listener;->onError(Lcom/qualcomm/ims/vt/Camera;I)V

    .line 252
    :cond_0
    return-void
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract setRecorderFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract setZoom(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract startPreview(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract stopPreview()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract stopRecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - CameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
