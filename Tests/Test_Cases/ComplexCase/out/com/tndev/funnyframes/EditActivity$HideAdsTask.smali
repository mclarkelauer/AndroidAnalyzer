.class public Lcom/tndev/funnyframes/EditActivity$HideAdsTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)Lcom/tndev/funnyframes/EditActivity;
    .registers 2
    .parameter

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a:Lcom/tndev/funnyframes/EditActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v1, Lhw;

    invoke-direct {v1, p0}, Lhw;-><init>(Lcom/tndev/funnyframes/EditActivity$HideAdsTask;)V

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1274
    return-void
.end method
