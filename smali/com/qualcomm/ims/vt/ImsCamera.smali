.class public Lcom/qualcomm/ims/vt/ImsCamera;
.super Lcom/qualcomm/ims/vt/Camera;
.source "ImsCamera.java"


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CAMERA_OPERATION_SUCCESS:S = 0x0s

.field private static final INVALID_SIZE:Landroid/util/Size;

.field private static final TAG:Ljava/lang/String; = "ImsCamera"


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mIsOpen:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsCamera;->INVALID_SIZE:Landroid/util/Size;

    .line 36
    const-string v0, "imscamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 73
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 74
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 76
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 78
    return-void
.end method

.method private doStopPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 311
    const-string v0, "doStopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopPreview()S

    move-result v1

    .line 313
    .local v1, "error":S
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 314
    if-nez v1, :cond_0

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 318
    return-void

    .line 315
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private doStopRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 321
    const-string v0, "doStopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopRecording()S

    move-result v1

    .line 323
    .local v1, "error":S
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 324
    if-nez v1, :cond_0

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 328
    return-void

    .line 325
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 444
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 445
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 96
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method private logIfError(Ljava/lang/String;S)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "error"    # S

    .line 496
    if-eqz p2, :cond_0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed with error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method

.method public static native native_open(I)S
.end method

.method public static native native_open(ILjava/lang/String;)S
.end method

.method private setDisplayOrientation()V
    .locals 7

    .line 452
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 453
    const-string v0, "WindowManager not available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    return-void

    .line 457
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 458
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "degrees":I
    const/4 v3, 0x0

    .line 463
    .local v3, "rotation":I
    const/4 v3, 0x0

    .line 464
    packed-switch v3, :pswitch_data_0

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisplayOrientation: Unexpected rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :pswitch_0
    const/16 v2, 0x10e

    .line 476
    goto :goto_0

    .line 472
    :pswitch_1
    const/16 v2, 0xb4

    .line 473
    goto :goto_0

    .line 469
    :pswitch_2
    const/16 v2, 0x5a

    .line 470
    goto :goto_0

    .line 466
    :pswitch_3
    const/4 v2, 0x0

    .line 467
    nop

    .line 481
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 482
    .local v4, "id":I
    invoke-static {v4, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 483
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 484
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v2

    rem-int/lit16 v5, v5, 0x168

    .line 485
    .end local v1    # "result":I
    .local v5, "result":I
    rsub-int v1, v5, 0x168

    rem-int/lit16 v1, v1, 0x168

    .end local v5    # "result":I
    .restart local v1    # "result":I
    goto :goto_1

    .line 487
    :cond_1
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v2

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v1, v5, 0x168

    .line 490
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDisplayOrientation rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setDisplayOrientation(I)S

    move-result v5

    .line 492
    .local v5, "error":S
    const-string v6, "setDisplayOrientation"

    invoke-direct {p0, v6, v5}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 493
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFrameDimension(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 200
    const-string v0, "setPreviewSize"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewSize(II)S

    move-result v1

    .line 206
    .local v1, "error":S
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 207
    return-void

    .line 202
    .end local v1    # "error":S
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private setPreviewFps(I)V
    .locals 2
    .param p1, "fps"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 215
    const-string v0, "setPreviewFps"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewFpsRange(S)S

    move-result v0

    .line 221
    .local v0, "error":S
    const-string v1, "setPreviewFpsRange"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 222
    return-void

    .line 217
    .end local v0    # "error":S
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z
    .locals 1
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    .line 124
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "close: Camera is already closed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_release()S

    move-result v0

    .line 137
    .local v0, "error":S
    const-string v1, "release"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 140
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 141
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 143
    return-void
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_getMaxZoom()I

    move-result v0

    .line 248
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    int-to-float v1, v0

    return v1

    .line 244
    .end local v0    # "result":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public getMinZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "ZOOM_MIN_VALUE":I
    const/4 v1, 0x0

    return v1

    .line 258
    .end local v0    # "ZOOM_MIN_VALUE":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSensorOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSensorOrientation: Failed to retrieve sensor orientation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    throw v0
.end method

.method public isFacingFront()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 274
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFacingFront info.facing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 270
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return v0
.end method

.method public isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_isZoomSupported()Z

    move-result v0

    .line 234
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isZoomSupported result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    return v0

    .line 230
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public native native_getMaxZoom()I
.end method

.method public native native_isZoomSupported()Z
.end method

.method public native native_release()S
.end method

.method public native native_setDisplayOrientation(I)S
.end method

.method public native native_setPreviewFpsRange(S)S
.end method

.method public native native_setPreviewSize(II)S
.end method

.method public native native_setPreviewTexture(Landroid/view/Surface;)S
.end method

.method public native native_setZoom(I)V
.end method

.method public native native_startPreview()S
.end method

.method public native native_startRecording()S
.end method

.method public native native_stopPreview()S
.end method

.method public native native_stopRecording()S
.end method

.method public open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 104
    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "open: Camera is already open."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "id":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_open(ILjava/lang/String;)S

    move-result v1

    .line 112
    .local v1, "error":S
    if-nez v1, :cond_1

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 117
    return-void

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->setPreviewFps(I)V

    .line 189
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->setFrameDimension(II)V

    .line 190
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 191
    return-void

    .line 185
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public setRecorderFrameRate(I)V
    .locals 1
    .param p1, "frameRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 439
    const-string v0, "setRecorderFrameRate: Not supported."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 160
    float-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setZoom(I)V

    .line 161
    return-void

    .line 156
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview: Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "startPreview: Camera preview already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    return-void

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 294
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewTexture(Landroid/view/Surface;)S

    move-result v0

    .line 295
    .local v0, "error":S
    const-string v2, "setPreviewTexture"

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 297
    if-nez v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startPreview()S

    move-result v0

    .line 299
    const-string v2, "startPreview"

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->setDisplayOrientation()V

    .line 303
    if-nez v0, :cond_2

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 308
    return-void

    .line 306
    :cond_2
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    .line 286
    .end local v0    # "error":S
    :cond_3
    const-string v0, "startPreview: Error camera is closed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: PreviewSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "startRecording: Camera recording already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    return-void

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 363
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->startPreview(Landroid/view/Surface;)V

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startRecording()S

    move-result v0

    .line 373
    .local v0, "error":S
    const-string v2, "startRecording"

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 374
    if-nez v0, :cond_2

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    .line 378
    return-void

    .line 375
    :cond_2
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    .line 364
    .end local v0    # "error":S
    :cond_3
    const-string v0, "startRecording: Preview surface is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public stopPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const-string v0, "stopPreview: Camera preview already stopped."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_0
    const-string v0, "stopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    .line 346
    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string v0, "stopRecording: Camera recording already stopped."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    return-void

    .line 390
    :cond_0
    const-string v0, "stopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 392
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    .line 395
    :cond_1
    return-void
.end method
