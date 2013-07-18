.class public Lid;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MainActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lid;->a:Lcom/tndev/funnyframes/MainActivity;

    .line 26
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lid;)Lcom/tndev/funnyframes/MainActivity;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lid;->a:Lcom/tndev/funnyframes/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lid;->a:Lcom/tndev/funnyframes/MainActivity;

    new-instance v1, Lie;

    invoke-direct {v1, p0}, Lie;-><init>(Lid;)V

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
