.class Lvendor/qti/hardware/radio/ims/SuppServiceNotification$1;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lvendor/qti/hardware/radio/ims/SuppServiceNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification$1;->createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 22
    new-instance v0, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;-><init>()V

    .line 23
    .local v0, "_aidl_out":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    invoke-virtual {v0, p1}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/SuppServiceNotification$1;->newArray(I)[Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 28
    new-array v0, p1, [Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    return-object v0
.end method