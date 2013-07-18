.class public Lii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Inventory;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 452
    invoke-virtual {p1}, Lcom/tndev/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 474
    :cond_7
    :goto_7
    return-void

    .line 457
    :cond_8
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    const-string v1, "remove_ad_id"

    invoke-virtual {p2, v1}, Lcom/tndev/billing/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 459
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0, v2}, Lcom/tndev/funnyframes/MenuActivity;->a(Lcom/tndev/funnyframes/MenuActivity;Z)V

    .line 461
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-boolean v0, v0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-eqz v0, :cond_4a

    .line 463
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREMIUM_UPGRADED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    :goto_2e
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->d(Lcom/tndev/funnyframes/MenuActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->e(Lcom/tndev/funnyframes/MenuActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-boolean v0, v0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-nez v0, :cond_7

    .line 472
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->f(Lcom/tndev/funnyframes/MenuActivity;)V

    goto :goto_7

    .line 468
    :cond_4a
    iget-object v0, p0, Lii;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREMIUM_UPGRADED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2e
.end method
