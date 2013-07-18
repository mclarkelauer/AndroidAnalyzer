.class public Lcom/tndev/common/utils/TNAnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scaleTo(Landroid/view/View;FFFFJLcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 29
    invoke-virtual {v0, p5, p6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 32
    new-instance v1, Lgd;

    invoke-direct {v1, p7, p8}, Lgd;-><init>(Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    return-void
.end method
