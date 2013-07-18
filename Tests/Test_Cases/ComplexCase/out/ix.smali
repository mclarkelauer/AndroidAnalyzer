.class public Lix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic a:Lcom/tndev/hdframes/ads/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/tndev/hdframes/ads/BootReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lix;->a:Lcom/tndev/hdframes/ads/BootReceiver;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Inventory;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/tndev/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    :goto_6
    return-void

    .line 70
    :cond_7
    const-string v0, "remove_ad_id"

    invoke-virtual {p2, v0}, Lcom/tndev/billing/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_42

    .line 74
    iget-object v1, p0, Lix;->a:Lcom/tndev/hdframes/ads/BootReceiver;

    iget-object v1, v1, Lcom/tndev/hdframes/ads/BootReceiver;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREMIUM_UPGRADED"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    :goto_21
    if-nez v0, :cond_55

    .line 81
    const-string v0, "FunnyFrames"

    const-string v1, "BootReceiver: setup Ads...xxxxxxxxxxxxxxxxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/pad/android/xappad/AdController;

    iget-object v1, p0, Lix;->a:Lcom/tndev/hdframes/ads/BootReceiver;

    iget-object v1, v1, Lcom/tndev/hdframes/ads/BootReceiver;->c:Landroid/content/Context;

    iget-object v2, p0, Lix;->a:Lcom/tndev/hdframes/ads/BootReceiver;

    iget-object v2, v2, Lcom/tndev/hdframes/ads/BootReceiver;->c:Landroid/content/Context;

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadNotification()V

    goto :goto_6

    .line 76
    :cond_42
    iget-object v1, p0, Lix;->a:Lcom/tndev/hdframes/ads/BootReceiver;

    iget-object v1, v1, Lcom/tndev/hdframes/ads/BootReceiver;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREMIUM_UPGRADED"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_21

    .line 86
    :cond_55
    const-string v0, "FunnyFrames"

    const-string v1, "BootReceiver: NOT Setup Ads...xxxxxxxxxxxxxxxxxx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method
