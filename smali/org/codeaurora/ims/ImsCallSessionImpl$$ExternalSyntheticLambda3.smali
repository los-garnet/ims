.class public final synthetic Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    check-cast p1, Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->$r8$lambda$uliLs79jNhH2ngLFirx4Hn89Jt0(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method
