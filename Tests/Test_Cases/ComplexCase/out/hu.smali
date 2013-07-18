.class public Lhu;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method private constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lhu;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tndev/funnyframes/EditActivity;Lhu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Lhu;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    return-void
.end method

.method static synthetic a(Lhu;)Lcom/tndev/funnyframes/EditActivity;
    .registers 2
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Lhu;->a:Lcom/tndev/funnyframes/EditActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1249
    iget-object v0, p0, Lhu;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v1, Lhv;

    invoke-direct {v1, p0}, Lhv;-><init>(Lhu;)V

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1256
    return-void
.end method
