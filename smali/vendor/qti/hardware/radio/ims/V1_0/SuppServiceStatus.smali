.class public final Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
.super Ljava/lang/Object;
.source "SuppServiceStatus.java"


# instance fields
.field public cbNumListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

.field public facilityType:I

.field public failureCause:Ljava/lang/String;

.field public hasErrorDetails:Z

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    .line 10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    .line 18
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    .line 19
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 95
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 96
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 97
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 96
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 100
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 102
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;-><init>()V

    .line 103
    .local v5, "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    mul-int/lit8 v6, v4, 0x48

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v5    # "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 149
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 151
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 152
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 153
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 154
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 159
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 160
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 24
    return v0

    .line 26
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 27
    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    if-eq v2, v3, :cond_2

    .line 30
    return v1

    .line 32
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 33
    .local v2, "other":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    if-eq v3, v4, :cond_3

    .line 34
    return v1

    .line 36
    :cond_3
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    if-eq v3, v4, :cond_4

    .line 37
    return v1

    .line 39
    :cond_4
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 40
    return v1

    .line 42
    :cond_5
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 43
    return v1

    .line 45
    :cond_6
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    if-eq v3, v4, :cond_7

    .line 46
    return v1

    .line 48
    :cond_7
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 49
    return v1

    .line 51
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 56
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    .line 60
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 62
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 113
    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    .line 114
    const-wide/16 v1, 0x4

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    .line 115
    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 117
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, p3, v13

    add-long/2addr v6, v11

    .line 117
    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 123
    const-wide/16 v1, 0x18

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    .line 124
    .local v13, "_hidl_vec_size":I
    mul-int/lit8 v3, v13, 0x18

    int-to-long v3, v3

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 124
    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 128
    .local v1, "childBlob":Landroid/os/HwBlob;
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 129
    const/4 v2, 0x0

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v13, :cond_0

    .line 130
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 131
    .local v3, "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 132
    iget-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v3    # "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "childBlob":Landroid/os/HwBlob;
    .end local v2    # "_hidl_index_0":I
    .end local v13    # "_hidl_vec_size":I
    :cond_0
    const-wide/16 v1, 0x28

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    .line 136
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 86
    const-wide/16 v0, 0x48

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 87
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ".status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceClassStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .facilityType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/FacilityType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .failureCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .cbNumListInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .hasErrorDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .errorDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 10
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 164
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->status:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 165
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->facilityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 166
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget-object v6, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 168
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 169
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x18

    add-long v7, p2, v5

    add-long/2addr v7, v2

    invoke-virtual {p1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    add-long v2, p2, v5

    const-wide/16 v7, 0xc

    add-long/2addr v2, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 171
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 172
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 173
    iget-object v7, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->cbNumListInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    mul-int/lit8 v8, v3, 0x18

    int-to-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "_hidl_index_0":I
    :cond_0
    add-long/2addr v5, p2

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 177
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->hasErrorDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 178
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    const-wide/16 v1, 0x30

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 140
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 143
    return-void
.end method
