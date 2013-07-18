.class public Lcom/tndev/funnyframes/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 54
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 56
    new-instance v1, Lif;

    invoke-direct {v1, p0}, Lif;-><init>(Lcom/tndev/funnyframes/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    iget-object v1, p0, Lcom/tndev/funnyframes/MainActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/MainActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/tndev/funnyframes/MainActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MainActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tndev/funnyframes/MainActivity;->a:Landroid/widget/ImageView;

    .line 26
    new-instance v0, Lid;

    invoke-direct {v0, p0}, Lid;-><init>(Lcom/tndev/funnyframes/MainActivity;)V

    .line 39
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 40
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 50
    return-void
.end method
