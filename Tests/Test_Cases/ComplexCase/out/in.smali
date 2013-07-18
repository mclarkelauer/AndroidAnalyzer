.class public Lin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lin;->a:Lcom/tndev/funnyframes/MenuActivity;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/tndev/billing/util/Purchase;Lcom/tndev/billing/util/IabResult;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-virtual {p2}, Lcom/tndev/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 529
    iget-object v0, p0, Lin;->a:Lcom/tndev/funnyframes/MenuActivity;

    iput-boolean v2, v0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 531
    iget-object v0, p0, Lin;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREMIUM_UPGRADED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 533
    iget-object v0, p0, Lin;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->f(Lcom/tndev/funnyframes/MenuActivity;)V

    .line 535
    :cond_21
    return-void
.end method
