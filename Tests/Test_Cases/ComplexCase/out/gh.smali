.class public Lgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/coverflow/CoverFlowView;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/coverflow/CoverFlowView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget-object v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->bringToFront()V

    .line 233
    iget-object v0, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget-object v1, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget-object v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    .line 234
    iget-object v2, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    iget-object v3, p0, Lgh;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 233
    invoke-virtual {v0, v1, v2, v3}, Lcom/tndev/custom/coverflow/CoverFlowView;->b(III)V

    .line 235
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    return-void
.end method
