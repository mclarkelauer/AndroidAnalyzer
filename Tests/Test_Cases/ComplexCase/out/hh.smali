.class public Lhh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, 0x1388

    .line 892
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->w(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 894
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-boolean v0, v0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    if-nez v0, :cond_2c

    .line 895
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->q(Lcom/tndev/funnyframes/EditActivity;)Lcom/google/ads/AdView;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->showAd(Lcom/google/ads/AdView;)V

    .line 897
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    iget-object v2, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-direct {v1, v2}, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 900
    :cond_2c
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v0

    if-ltz v0, :cond_4c

    .line 901
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    .line 902
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    new-instance v1, Lhu;

    iget-object v2, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhu;-><init>(Lcom/tndev/funnyframes/EditActivity;Lhu;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 904
    :cond_4c
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 890
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 887
    iget-object v0, p0, Lhh;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 888
    return-void
.end method
