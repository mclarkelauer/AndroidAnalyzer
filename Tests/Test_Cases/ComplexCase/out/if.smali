.class public Lif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lif;->a:Lcom/tndev/funnyframes/MainActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lif;->a:Lcom/tndev/funnyframes/MainActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MainActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lif;->a:Lcom/tndev/funnyframes/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lif;->a:Lcom/tndev/funnyframes/MainActivity;

    const-class v3, Lcom/tndev/funnyframes/MenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lif;->a:Lcom/tndev/funnyframes/MainActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/MainActivity;->finish()V

    .line 74
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    return-void
.end method
