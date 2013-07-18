.class public Lfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/tndev/billing/util/IabHelper;

.field private final synthetic b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method public constructor <init>(Lcom/tndev/billing/util/IabHelper;Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    iput-object p2, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    .line 222
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    iget-object v0, v0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_17
    iget-object v1, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    iget-object v1, v1, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 226
    if-eqz v1, :cond_3c

    .line 227
    iget-object v0, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/tndev/billing/util/IabResult;

    .line 228
    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 227
    invoke-interface {v0, v2}, Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/tndev/billing/util/IabResult;)V

    .line 245
    :cond_3b
    :goto_3b
    return-void

    .line 231
    :cond_3c
    iget-object v1, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In-app billing version 3 supported for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tndev/billing/util/IabHelper;->c:Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_55} :catch_67

    .line 242
    :goto_55
    iget-object v0, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_3b

    .line 243
    iget-object v0, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/tndev/billing/util/IabResult;

    const/4 v2, 0x0

    const-string v3, "Setup successful."

    invoke-direct {v1, v2, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/tndev/billing/util/IabResult;)V

    goto :goto_3b

    .line 234
    :catch_67
    move-exception v0

    .line 235
    iget-object v1, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_7a

    .line 236
    iget-object v1, p0, Lfi;->b:Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/tndev/billing/util/IabResult;

    const/16 v3, -0x3e9

    .line 237
    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 236
    invoke-interface {v1, v2}, Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/tndev/billing/util/IabResult;)V

    .line 239
    :cond_7a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_55
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lfi;->a:Lcom/tndev/billing/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    .line 216
    return-void
.end method
