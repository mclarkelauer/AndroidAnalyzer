.class public Lcom/pad/android/xappad/AdReminderNotification;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field nm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3ea

    const/4 v3, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 21
    const-string v0, "sectionid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "onReceived called AdReminderNotification - "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "alarmType - "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "alarmtype"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "alarmtype"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 28
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    .line 29
    iget-object v0, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    :cond_58
    :goto_58
    return-void

    .line 31
    :cond_59
    const-string v2, "reminder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 33
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Reminder Alarm triggered with sectionid - "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    .line 37
    const/4 v0, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_1d8

    .line 39
    const-string v1, ""

    .line 40
    const-string v6, ""

    .line 43
    :try_start_89
    const-string v0, "LBAdController"

    const-string v2, "get values from bundle"

    invoke-static {v0, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "remindericon"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_9d
    .catchall {:try_start_89 .. :try_end_9d} :catchall_178
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9d} :catch_104

    move-result v2

    .line 45
    :try_start_9e
    const-string v0, "remindertitle"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v0, "remindertext"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a9
    .catchall {:try_start_9e .. :try_end_a9} :catchall_1d2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a9} :catch_1d4

    move-result-object v0

    .line 55
    const-string v4, "LBAdController"

    const-string v6, "into finally statement"

    invoke-static {v4, v6}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v2, v5, v2

    .line 58
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, p1, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_ce
    const-string v0, "LBAdController"

    const-string v1, "trigger the reminder notification"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_e2} :catch_e4

    goto/16 :goto_58

    .line 70
    :catch_e4
    move-exception v0

    .line 72
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in reminder notification - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 48
    :catch_104
    move-exception v0

    move v2, v3

    .line 50
    :goto_106
    :try_start_106
    const-string v4, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error with getting values from bundle - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11e
    .catchall {:try_start_106 .. :try_end_11e} :catchall_1d2

    .line 55
    const-string v0, "LBAdController"

    const-string v2, "into finally statement"

    invoke-static {v0, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v0, v5, v3

    .line 58
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v0, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, p1, v1, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_142
    const-string v0, "LBAdController"

    const-string v1, "trigger the reminder notification"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v0, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_156} :catch_158

    goto/16 :goto_58

    .line 70
    :catch_158
    move-exception v0

    .line 72
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in reminder notification - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_58

    .line 54
    :catchall_178
    move-exception v0

    move v2, v3

    .line 55
    :goto_17a
    const-string v4, "LBAdController"

    const-string v7, "into finally statement"

    invoke-static {v4, v7}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v2, v5, v2

    .line 58
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v2, v1, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, p1, v1, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_19e
    const-string v1, "LBAdController"

    const-string v2, "trigger the reminder notification"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v1, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1b2} :catch_1b3

    .line 75
    :goto_1b2
    throw v0

    .line 70
    :catch_1b3
    move-exception v1

    .line 72
    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in reminder notification - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b2

    .line 54
    :catchall_1d2
    move-exception v0

    goto :goto_17a

    .line 48
    :catch_1d4
    move-exception v0

    goto/16 :goto_106

    .line 37
    nop

    :array_1d8
    .array-data 0x4
        0x74t 0x0t 0x8t 0x1t
        0x2bt 0x0t 0x8t 0x1t
        0xct 0x0t 0x8t 0x1t
        0xat 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
    .end array-data
.end method
