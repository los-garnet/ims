.class Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mhandleSessionModifyConfirmDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    .line 64
    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;->this$0:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->-$$Nest$mhandleSessionModifyDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V

    .line 61
    nop

    .line 68
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
