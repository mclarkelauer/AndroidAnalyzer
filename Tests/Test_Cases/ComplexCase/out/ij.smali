.class public Lij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lij;)Lcom/tndev/funnyframes/MenuActivity;
    .registers 2
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    return-object v0
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 480
    invoke-virtual {p1}, Lcom/tndev/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 482
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    const-string v1, "There is problem with purchasing.\nPlease try again later."

    new-instance v2, Lik;

    invoke-direct {v2, p0}, Lik;-><init>(Lij;)V

    .line 487
    const/4 v3, 0x0

    .line 482
    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 516
    :cond_14
    :goto_14
    return-void

    .line 491
    :cond_15
    invoke-virtual {p2}, Lcom/tndev/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove_ad_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 492
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    iput-boolean v2, v0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 494
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREMIUM_UPGRADED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    const-string v1, "Thank you for purchasing.\nPlease restart for the changes to take effect. Restart Now?"

    const-string v2, "Restart"

    new-instance v3, Lil;

    invoke-direct {v3, p0}, Lil;-><init>(Lij;)V

    .line 504
    const-string v4, "Later"

    new-instance v5, Lim;

    invoke-direct {v5, p0}, Lim;-><init>(Lij;)V

    .line 497
    invoke-static/range {v0 .. v5}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lij;->a:Lcom/tndev/funnyframes/MenuActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->i(Lcom/tndev/funnyframes/MenuActivity;)V

    goto :goto_14
.end method
