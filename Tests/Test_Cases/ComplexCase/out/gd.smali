.class public Lgd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final synthetic a:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

.field private final synthetic b:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;


# direct methods
.method public constructor <init>(Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgd;->a:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    iput-object p2, p0, Lgd;->b:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lgd;->b:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lgd;->b:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    invoke-interface {v0}, Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;->onEvent()V

    .line 51
    :cond_9
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lgd;->a:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lgd;->a:Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;

    invoke-interface {v0}, Lcom/tndev/common/utils/TNAnimationUtils$OnAnimationEvent;->onEvent()V

    .line 39
    :cond_9
    return-void
.end method
