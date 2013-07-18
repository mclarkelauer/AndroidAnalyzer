.class public Lcom/tndev/common/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openMarket(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Lfz;

    invoke-direct {v0, p1, p0}, Lfz;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public static openMoreApps(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tndev/common/activity/MoreGameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    const-string v2, "PACKAGE_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
