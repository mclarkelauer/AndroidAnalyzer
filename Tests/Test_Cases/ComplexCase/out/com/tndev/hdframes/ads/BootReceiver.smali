.class public Lcom/tndev/hdframes/ads/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:Lcom/tndev/billing/util/IabHelper;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/Context;

.field public d:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->a:Lcom/tndev/billing/util/IabHelper;

    .line 63
    new-instance v0, Lix;

    invoke-direct {v0, p0}, Lix;-><init>(Lcom/tndev/hdframes/ads/BootReceiver;)V

    iput-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->d:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tndev/hdframes/ads/BootReceiver;->c:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/tndev/billing/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsXS7yryMnCL3OHSxyTumGo01/D4MkOYdr/uytMWOeyzfib0FPyxRfY3rTjEFASe/lqALkb4/pIhYC/j8eEJ0xA1RiUZwskusyMAUkaPBgCoc4sdDi84Kiggk6mmcy9jxcHT3IqD2EgzqDileoJEJjXU1N46v2rvOKRmQUFy7kwJtlB1Bn/RhmoZ3a0fmTg9qduOrCvZPrRLwAcwzcAKFxsSRwo+woivyUAjXsr9P/7YovxOs80MJTEbzcBqsNOvjZf39HxaBqYuHa0+Ua0aGTQ6iO7ulWPpzOj9SB1jwzM/q2201P2qhsoYgI0jIEZ1ukqJG3ntVMSezrnwyHw1cdwIDAQAB"

    invoke-direct {v0, p1, v1}, Lcom/tndev/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->a:Lcom/tndev/billing/util/IabHelper;

    .line 41
    iget-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->a:Lcom/tndev/billing/util/IabHelper;

    new-instance v1, Liy;

    invoke-direct {v1, p0}, Liy;-><init>(Lcom/tndev/hdframes/ads/BootReceiver;)V

    invoke-virtual {v0, v1}, Lcom/tndev/billing/util/IabHelper;->startSetup(Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 55
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->b:Landroid/content/SharedPreferences;

    .line 56
    iget-object v0, p0, Lcom/tndev/hdframes/ads/BootReceiver;->b:Landroid/content/SharedPreferences;

    const-string v1, "PREMIUM_UPGRADED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    return-void
.end method
