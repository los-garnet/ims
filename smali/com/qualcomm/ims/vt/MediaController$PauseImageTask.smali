.class Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;
.super Landroid/os/AsyncTask;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field width:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;II)V
    .locals 0
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 128
    iput p2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    .line 129
    iput p3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    .line 130
    return-void
.end method

.method private reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    const/high16 v4, 0x7f020000

    invoke-static {v1, v4, v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/MediaController;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v3, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-static {p1, v1, v2, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->decodeImage(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImageAsync reconfigureAndDecodeImage bitmap b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 148
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 156
    .local v0, "uri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewImageAsync: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "setPreviewImageAsync: PauseImageTask is cancelled"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_0
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->reconfigureAndDecodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewImageAsync bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 171
    if-nez p1, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/MediaController;->-$$Nest$msetPauseImage(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V

    .line 176
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 123
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController$PauseImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
