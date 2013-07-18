.class public Lhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity$HideAdsTask;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhw;->a:Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lhw;->a:Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)Lcom/tndev/funnyframes/EditActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lhw;->a:Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)Lcom/tndev/funnyframes/EditActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->q(Lcom/tndev/funnyframes/EditActivity;)Lcom/google/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1270
    iget-object v0, p0, Lhw;->a:Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)Lcom/tndev/funnyframes/EditActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->q(Lcom/tndev/funnyframes/EditActivity;)Lcom/google/ads/AdView;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->hideAd(Lcom/google/ads/AdView;)V

    .line 1272
    :cond_23
    return-void
.end method
