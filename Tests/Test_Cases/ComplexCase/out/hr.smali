.class public Lhr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2f

    .line 293
    iget-object v0, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v0

    if-ltz v0, :cond_2f

    .line 294
    iget-object v0, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    iget-object v0, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    .line 296
    iget-object v0, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    new-instance v1, Lhu;

    iget-object v2, p0, Lhr;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lhu;-><init>(Lcom/tndev/funnyframes/EditActivity;Lhu;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 299
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method
