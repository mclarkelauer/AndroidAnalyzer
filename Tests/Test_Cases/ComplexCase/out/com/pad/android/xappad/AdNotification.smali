.class public Lcom/pad/android/xappad/AdNotification;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field nm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    const-string v1, "sectionid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/pad/android/xappad/AdController;

    invoke-direct {v1, p1, v0}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ADSTATUS_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 40
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 44
    :try_start_36
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Alarm triggered with sectionid - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4f} :catch_60

    move-result v0

    if-nez v0, :cond_5c

    .line 50
    const-wide/16 v2, 0x1388

    :try_start_54
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_8b

    .line 54
    :goto_57
    :try_start_57
    const-string v0, "Alarm"

    invoke-virtual {v1, v0}, Lcom/pad/android/xappad/AdController;->loadNotificationOnRequest(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_60

    .line 64
    :cond_5c
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    .line 71
    :goto_5f
    return-void

    .line 57
    :catch_60
    move-exception v0

    .line 59
    :try_start_61
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception AdNotification.class - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_61 .. :try_end_7e} :catchall_82

    .line 64
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    goto :goto_5f

    .line 63
    :catchall_82
    move-exception v0

    .line 64
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    .line 65
    throw v0

    .line 69
    :cond_87
    invoke-virtual {v1}, Lcom/pad/android/xappad/AdController;->setPauseAlarm()V

    goto :goto_5f

    .line 52
    :catch_8b
    move-exception v0

    goto :goto_57
.end method
