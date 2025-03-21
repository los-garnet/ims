.class public Lorg/codeaurora/ims/ImsRadioIndicationAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.source "ImsRadioIndicationAidl.java"


# instance fields
.field private mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 2
    .param p1, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p2, "phoneId"    # I

    .line 68
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 70
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "4dc4d46f93c3267b06eca11159d19dad16e50502"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 88
    const/16 v0, 0x10

    return v0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 353
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->callId:I

    .line 354
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallComposerInfo(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    .line 353
    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    .line 355
    return-void
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 2
    .param p1, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 98
    const-string v0, "onCallStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v0, "Call list is null."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallImsArray([Lvendor/qti/hardware/radio/ims/CallInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public onCiWlanNotification(I)V
    .locals 2
    .param p1, "type"    # I

    .line 492
    const-string v0, "onCiWlanNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCiWlanNotification(I)Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onCiWlanNotification(Z)V

    .line 494
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 432
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    .line 434
    return-void
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmergencyCallBackModeChanged() ECB mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 166
    const-string v0, "onEmergencyCallBackModeChanged: invalid ECBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    .line 163
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    .line 160
    nop

    .line 169
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 231
    const-string v0, "onGeolocationInfoRequested()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    new-instance v1, Lorg/codeaurora/ims/GeoLocationInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/codeaurora/ims/GeoLocationInfo;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    .line 233
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 2
    .param p1, "handover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 135
    const-string v0, "onHandover()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object v0

    .line 137
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 138
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 237
    const-string v0, "onImsSubConfigChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 238
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 239
    .local v0, "ret":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 240
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 3
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 379
    const-string v0, "onIncomingCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 381
    if-nez p1, :cond_0

    .line 382
    const-string v0, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 383
    return-void

    .line 386
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 387
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->logv(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 391
    return-void
.end method

.method public onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V
    .locals 2
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 469
    const-string v0, "onIncomingCallAutoRejected2()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 471
    if-eqz p1, :cond_3

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->isDcCall:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callReason:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->callReason:Ljava/lang/String;

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    :cond_1
    const-string v0, "onIncomingCallAutoRejected2: callComposerInfo and ecnamInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 482
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 483
    return-void

    .line 486
    :cond_2
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 487
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 488
    return-void

    .line 472
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_3
    :goto_0
    const-string v0, "onIncomingCallAutoRejected2: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 2
    .param p1, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 360
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 362
    if-eqz p1, :cond_2

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_1

    .line 368
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 369
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->autoCallRejectionInfo:Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 370
    return-void

    .line 373
    :cond_1
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 374
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 375
    return-void

    .line 363
    .end local v0    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_2
    :goto_0
    const-string v0, "onIncomingCallComposerCallAutoRejected: rejectInfo is null. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 438
    const-string v0, "onIncomingDtmfStart()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStart(ILjava/lang/String;)V

    .line 440
    return-void
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 3
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 444
    const-string v0, "onIncomingDtmfStop()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->callId:I

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->dtmf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingDtmfStop(ILjava/lang/String;)V

    .line 446
    return-void
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 2
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 290
    const-string v0, "onIncomingSms()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 291
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->pdu:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/IncomingSms;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object v0

    .line 296
    .local v0, "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    .line 297
    return-void

    .line 292
    .end local v0    # "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    :cond_1
    :goto_0
    const-string v0, "pdu or format is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 2
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 224
    const-string v0, "onMessageWaiting()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMessageWaitingIndication(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object v0

    .line 226
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    .line 227
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 1
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 328
    const-string v0, "onModemSupportsWfcRoamingModeConfiguration()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 331
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 2
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 206
    const-string v0, "onModifyCall()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v0, "onModifyCall: callModifyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 209
    return-void

    .line 211
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toCallModify(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    .line 212
    .local v0, "ret":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 213
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 321
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    .line 323
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 2
    .param p1, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 313
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 314
    nop

    .line 315
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiIdentityLineInfoList([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    .line 317
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 2
    .param p1, "voiceCapability"    # I

    .line 450
    const-string v0, "onMultiSimVoiceCapabilityChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiSimVoiceCapabilityChanged(I)V

    .line 453
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 2
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 244
    const-string v0, "onParticipantStatusInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toParticipantStatus(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object v0

    .line 246
    .local v0, "ret":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    .line 247
    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V
    .locals 2
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 457
    const-string v0, "onPreAlertingCallInfoAvailable()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 459
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/EcnamInfo;

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->isDcCall:Z

    if-nez v0, :cond_0

    .line 460
    const-string v0, "onPreAlertingCallInfoAvailable: callComposerInfo and ecnamInfo is null and isDcCall is false "

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 462
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toPreAlertingInfo(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)Lorg/codeaurora/ims/PreAlertingCallInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V

    .line 465
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 2
    .param p1, "radioState"    # I

    .line 149
    const-string v0, "onRadioStateChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRadioState(I)Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v0

    .line 151
    .local v0, "outRadioState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 152
    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 2
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 183
    const-string v0, "onRefreshConferenceInfo()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 184
    if-nez p1, :cond_0

    .line 185
    const-string v0, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)Lorg/codeaurora/ims/ConfInfo;

    move-result-object v0

    .line 190
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 191
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 2
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 195
    const-string v0, "onRefreshViceInfo ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 196
    if-eqz p1, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/ViceInfo;->viceInfoUri:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toViceUriInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)Lorg/codeaurora/ims/ViceUriInfo;

    move-result-object v0

    .line 201
    .local v0, "info":Lorg/codeaurora/ims/ViceUriInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    .line 202
    return-void

    .line 197
    .end local v0    # "info":Lorg/codeaurora/ims/ViceUriInfo;
    :cond_1
    :goto_0
    const-string v0, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 2
    .param p1, "blockStatusInfo"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 251
    const-string v0, "onRegistrationBlockStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 252
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object v0

    .line 254
    .local v0, "ret":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    .line 255
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 2
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 128
    const-string v0, "onRegistrationChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 130
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 131
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 2
    .param p1, "geoLocationDataStatus"    # I

    .line 395
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 396
    if-nez p1, :cond_0

    .line 397
    const-string v0, "onRetrievingGeoLocationDataStatus: GeoLocationDataStatus is invalid. Returning"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toGeoLocationStatus(I)I

    move-result v0

    .line 401
    .local v0, "ret":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    .line 402
    return-void
.end method

.method public onRing()V
    .locals 1

    .line 111
    const-string v0, "onRing()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    .line 113
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 5
    .param p1, "tone"    # I

    .line 117
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 119
    .local v1, "response":[I
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toRingbackTone(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingbackTone() response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 122
    aget v2, v1, v3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 123
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    .line 124
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 259
    const-string v0, "onRttMessageReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 2
    .param p1, "domain"    # I

    .line 412
    const-string v0, "onServiceDomainChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 413
    if-nez p1, :cond_0

    .line 414
    const-string v0, "SystemServiceDomain is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 415
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceDomain(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    .line 418
    return-void
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 2
    .param p1, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 142
    const-string v0, "onServiceStatusChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "configCode"    # Ljava/lang/String;

    .line 406
    const-string v0, "onSipDtmfReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 422
    const-string v0, "onSmsCallBackModeChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 423
    if-nez p1, :cond_0

    .line 424
    const-string v0, "SmsCallBackMode is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 425
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSmsCallBackMode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    .line 428
    return-void
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 2
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 279
    const-string v0, "onSmsSendStatusReport()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 280
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->pdu:[B

    if-nez v0, :cond_0

    .line 281
    const-string v0, "smsStatusReport.pdu is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 282
    return-void

    .line 284
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object v0

    .line 285
    .local v0, "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    .line 286
    return-void
.end method

.method public onSrtpEncryptionStatusChanged(Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    .line 498
    const-string v0, "onStrpStatusIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->callId:I

    iget v2, p1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->categories:I

    invoke-interface {v0, v1, v2}, Lorg/codeaurora/ims/IImsRadioIndication;->onSrtpEncryptionInfo(II)V

    .line 500
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 217
    const-string v0, "onSuppServiceNotification()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toSuppNotifyInfo(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object v0

    .line 219
    .local v0, "suppNotifyInfo":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 220
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 2
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 272
    const-string v0, "onSupplementaryServiceIndication()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 273
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toImsSsData(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)Landroid/telephony/ims/ImsSsData;

    move-result-object v0

    .line 274
    .local v0, "ssData":Landroid/telephony/ims/ImsSsData;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 275
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 2
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 173
    const-string v0, "onTtyNotification ()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 174
    if-nez p1, :cond_0

    .line 175
    const-string v0, "onTtyNotification: ttyInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v1, p1, Lvendor/qti/hardware/radio/ims/TtyInfo;->mode:I

    invoke-static {v1}, Lorg/codeaurora/ims/StableAidl;->toTtyMode(I)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onTtyNotification([I)V

    .line 179
    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 335
    const-string v0, "onUssdMessageFailed()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 336
    if-nez p1, :cond_0

    .line 337
    const-string v0, "UssMode type is invalid"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->loge(Ljava/lang/String;)V

    .line 338
    return-void

    .line 340
    :cond_0
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 341
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    .line 342
    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 346
    const-string v0, "onUssdReceived()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 347
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/StableAidl;->toUssdInfo(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 348
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 349
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "voWiFiCallQuality"    # I

    .line 265
    const-string v0, "onVoWiFiCallQuality()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoWiFiQuality(I)[I

    move-result-object v0

    .line 267
    .local v0, "ret":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    .line 268
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 2
    .param p1, "voiceInfo"    # I

    .line 307
    const-string v0, "onVoiceInfoChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->toVoiceInfo(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    .line 309
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1
    .param p1, "isVopsEnabled"    # Z

    .line 301
    const-string v0, "onVopsChanged()"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->log(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationAidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    .line 303
    return-void
.end method
