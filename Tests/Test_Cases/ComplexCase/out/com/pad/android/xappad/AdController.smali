.class public Lcom/pad/android/xappad/AdController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LB_LOG:Ljava/lang/String; = "LBAdController"

.field public static final SDK_LEVEL:Ljava/lang/String; = "06b"

.field public static final SDK_VERSION:Ljava/lang/String; = "3"


# instance fields
.field private final MAX_APP_ICONS:I

.field private am:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private initialized:Z

.field private listenNotif:Lcom/pad/android/listener/AdNotificationListener;

.field private loadIcon:Z

.field private notificationLaunchType:Ljava/lang/String;

.field private onRequest:Z

.field private onTimer:Z

.field private pendingAlarmIntent:Landroid/app/PendingIntent;

.field private results:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;

.field private useNotification:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/pad/android/xappad/AdController;->MAX_APP_ICONS:I

    .line 48
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    .line 52
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 53
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 54
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 55
    iput-boolean v1, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 69
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/pad/android/listener/AdNotificationListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    iput-object p3, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    return-object v0
.end method

.method private displayIcon()V
    .registers 3

    .prologue
    .line 896
    const-string v0, "LBAdController"

    const-string v1, "displayIcon called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    .line 899
    const-string v0, "LBAdController"

    const-string v1, "Results are null - no icon will be loaded"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_12
    :goto_12
    return-void

    .line 905
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 907
    new-instance v0, Lcom/pad/android/xappad/AdController$AdIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pad/android/xappad/AdController$AdIcon;-><init>(Lcom/pad/android/xappad/AdController;Lcom/pad/android/xappad/AdController$AdIcon;)V

    .line 908
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/xappad/AdController$AdIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34

    goto :goto_12

    .line 911
    :catch_34
    move-exception v0

    .line 913
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method private incrementIterationCounter()V
    .registers 5

    .prologue
    .line 847
    const-string v0, "LBAdController"

    const-string v1, "increment counter called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SD_ITERATION_COUNTER_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SD_ITERATION_COUNTER_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    return-void
.end method

.method private invalidateOptin()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "invalidateoptin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 235
    const-string v0, "0"

    .line 238
    :try_start_10
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v2, "invalidateoptin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_38

    move-result-object v0

    .line 240
    :goto_18
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 242
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    :cond_37
    return-void

    .line 239
    :catch_38
    move-exception v1

    goto :goto_18
.end method

.method private loadNotificationDetails()V
    .registers 13

    .prologue
    .line 721
    const-string v0, "LBAdController"

    const-string v1, "loadNotificationDetails called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    .line 724
    const-string v0, "LBAdController"

    const-string v1, "Notification will not be loaded - no internet connection"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_12
    :goto_12
    return-void

    .line 730
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 732
    const-string v0, "LBAdController"

    const-string v1, "notification to be fired"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 735
    const/4 v1, 0x5

    new-array v1, v1, [I
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_18d

    fill-array-data v1, :array_21a

    .line 738
    const/4 v2, 0x0

    .line 741
    :try_start_3b
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v4, "notificationicon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_189
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_42} :catch_182

    move-result v2

    .line 749
    :try_start_43
    aget v1, v1, v2

    move v4, v1

    .line 751
    :goto_46
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v2, "notificationtext"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    const-string v2, ""
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_50} :catch_18d

    .line 755
    :try_start_50
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "notificationinstruction"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_212

    move-result-object v2

    .line 758
    :goto_58
    :try_start_58
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "notificationtext"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 759
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "notificationdescription"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_67} :catch_18d

    move-result-object v3

    .line 763
    :try_start_68
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "notificationdisplay"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 764
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c9

    .line 766
    const-string v7, "notificationtext"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_215

    .line 768
    iget-object v7, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_68 .. :try_end_85} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_85} :catch_1d2

    move-result-object v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 780
    :goto_89
    :try_start_89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 781
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    iget-object v9, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v10, "notificationurl"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 782
    iget-object v8, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 783
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 784
    iget v4, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v8, Landroid/app/Notification;->flags:I

    .line 786
    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v8, v4, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 789
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 790
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_NOTIFICATION_ID_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 792
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Stored Pref - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    if-nez v1, :cond_f3

    .line 795
    const/16 v1, 0x2711

    .line 799
    :cond_f3
    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_f8
    .catchall {:try_start_89 .. :try_end_f8} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_f8} :catch_18d

    .line 802
    :try_start_f8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SD_NOTIFICATION_FIRED_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 803
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_10f
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_10f} :catch_20f

    .line 806
    :goto_10f
    :try_start_10f
    const-string v0, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New Notification created with ID - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_10f .. :try_end_123} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_123} :catch_18d

    .line 810
    :try_start_123
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v3, "notificationmultiple"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SD_NOTIFICATION_ID_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 814
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_14c
    .catchall {:try_start_123 .. :try_end_14c} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_14c} :catch_20c

    .line 828
    :cond_14c
    :goto_14c
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 831
    :try_start_14f
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v0, :cond_15d

    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v1, "Alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 833
    :cond_15d
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_160} :catch_162

    goto/16 :goto_12

    .line 836
    :catch_162
    move-exception v0

    .line 838
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while setting Alarm - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 743
    :catch_182
    move-exception v2

    .line 745
    const/4 v2, 0x0

    .line 749
    :try_start_184
    aget v1, v1, v2

    move v4, v1

    goto/16 :goto_46

    .line 748
    :catchall_189
    move-exception v0

    .line 749
    aget v1, v1, v2

    .line 750
    throw v0
    :try_end_18d
    .catchall {:try_start_184 .. :try_end_18d} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18d} :catch_18d

    .line 821
    :catch_18d
    move-exception v0

    .line 822
    :try_start_18e
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_193
    .catchall {:try_start_18e .. :try_end_193} :catchall_1d7

    .line 828
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 831
    :try_start_196
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v0, :cond_1a4

    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v1, "Alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 833
    :cond_1a4
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1a7} :catch_1a9

    goto/16 :goto_12

    .line 836
    :catch_1a9
    move-exception v0

    .line 838
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while setting Alarm - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 774
    :cond_1c9
    :try_start_1c9
    const-string v1, "You have 1 new message"

    .line 775
    const-string v2, "Tap to View"
    :try_end_1cd
    .catchall {:try_start_1c9 .. :try_end_1cd} :catchall_1d7
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cd} :catch_1d2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_89

    .line 778
    :catch_1d2
    move-exception v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_89

    .line 826
    :catchall_1d7
    move-exception v0

    .line 828
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->incrementIterationCounter()V

    .line 831
    :try_start_1db
    iget-boolean v1, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-nez v1, :cond_1e9

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v2, "Alarm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    .line 833
    :cond_1e9
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1ec} :catch_1ed

    .line 841
    :cond_1ec
    :goto_1ec
    throw v0

    .line 836
    :catch_1ed
    move-exception v1

    .line 838
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while setting Alarm - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1ec

    .line 817
    :catch_20c
    move-exception v0

    goto/16 :goto_14c

    .line 805
    :catch_20f
    move-exception v0

    goto/16 :goto_10f

    .line 757
    :catch_212
    move-exception v1

    goto/16 :goto_58

    :cond_215
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_89

    .line 735
    nop

    :array_21a
    .array-data 0x4
        0x74t 0x0t 0x8t 0x1t
        0x2bt 0x0t 0x8t 0x1t
        0xct 0x0t 0x8t 0x1t
        0xat 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
    .end array-data
.end method

.method private loadNotificationOnTimer()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 403
    const-string v0, "LBAdController"

    const-string v1, "loadNotificationOnTimer called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_17

    .line 407
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 408
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 410
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    .line 416
    :goto_16
    return-void

    .line 414
    :cond_17
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationTimerDetails()V

    goto :goto_16
.end method

.method private loadNotificationTimerDetails()V
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    .line 422
    const-string v0, "LBAdController"

    const-string v1, "Notification will not be loaded - no internet connection"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_b
    :goto_b
    return-void

    .line 428
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarm()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_b

    .line 433
    :catch_20
    move-exception v0

    .line 435
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b
.end method

.method private setAlarm()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 538
    const-string v1, "LBAdController"

    const-string v2, "setAlarm called"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 540
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 541
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-le v1, v8, :cond_24f

    .line 544
    const-string v1, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "internet connection found....initialize alarm from settings - Result Length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SD_ITERATION_COUNTER_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "0"

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_56} :catch_1ad

    move-result v4

    .line 552
    :try_start_57
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v5, "notificationcookie"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_66} :catch_18a

    move-result v0

    move v1, v0

    .line 559
    :goto_68
    :try_start_68
    const-string v0, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Values: ck="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ic="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nLT="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 562
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    const-string v5, "sectionid"

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 565
    if-eq v1, v8, :cond_d1

    if-nez v1, :cond_c7

    if-eqz v4, :cond_d1

    :cond_c7
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    const-string v5, "Alarm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 568
    :cond_d1
    const-string v0, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "alarm will be initialized - ck is "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ic is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nLT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_102} :catch_1ad

    move-result-wide v1

    .line 575
    :try_start_103
    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v5, "notificationstart"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 576
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 578
    const-string v5, "LBAdController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Alarm initialized - Scheduled at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v5, "LBAdController"

    const-string v6, "----------------------------------------"

    invoke-static {v5, v6}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SD_ALARM_TIME_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD_WAKE_TIME_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-interface {v3, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_ALARM_INTERVAL_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, v4

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_189} :catch_18e

    .line 635
    :goto_189
    return-void

    .line 554
    :catch_18a
    move-exception v1

    move v1, v0

    .line 556
    goto/16 :goto_68

    .line 590
    :catch_18e
    move-exception v0

    .line 592
    :try_start_18f
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error caused while setting Alarm (if case): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_189

    .line 629
    :catch_1ad
    move-exception v0

    goto :goto_189

    .line 601
    :cond_1af
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_WAKE_TIME_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 603
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_1cd} :catch_1ad

    move-result-wide v4

    .line 608
    :try_start_1ce
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 610
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Alarm reset - Scheduled at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v6, "LBAdController"

    const-string v7, "----------------------------------------"

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SD_ALARM_TIME_"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SD_WAKE_TIME_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_22d} :catch_22f

    goto/16 :goto_189

    .line 622
    :catch_22f
    move-exception v0

    .line 624
    :try_start_230
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error caused while setting Alarm (else case): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_24d
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_24d} :catch_1ad

    goto/16 :goto_189

    .line 633
    :cond_24f
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarmFromCookie()V

    goto/16 :goto_189
.end method

.method private setAlarmFromCookie()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 442
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 443
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 447
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v6

    .line 448
    const-wide/16 v8, 0x19

    cmp-long v8, v4, v8

    if-lez v8, :cond_e3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_ALARM_INTERVAL_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 451
    const-string v2, "LBAdController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No internet, already tried 5 times, set it to timer "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "LBAdController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Times attempted = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SD_ALARM_TIME_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v1, v0

    .line 474
    :goto_b4
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 476
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v4, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    const-string v3, "sectionid"

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v3, v12, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 482
    :try_start_da
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e2} :catch_150

    .line 488
    :goto_e2
    return-void

    .line 459
    :cond_e3
    const-wide/16 v8, 0x5

    rem-long v8, v4, v8

    cmp-long v2, v8, v10

    if-nez v2, :cond_121

    cmp-long v2, v4, v10

    if-lez v2, :cond_121

    .line 462
    const-wide/32 v0, 0x927c0

    add-long/2addr v0, v6

    .line 463
    const-string v2, "LBAdController"

    const-string v6, "No internet, retry alarm in 10 mins"

    invoke-static {v2, v6}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v4, v13

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v1, v0

    goto :goto_b4

    .line 469
    :cond_121
    const-string v2, "LBAdController"

    const-string v6, "No internet, retry alarm in 10s"

    invoke-static {v2, v6}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SD_ALARM_ATTEMPTED_"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-long/2addr v4, v13

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v1, v0

    goto/16 :goto_b4

    .line 484
    :catch_150
    move-exception v0

    .line 485
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e2
.end method

.method private setNotification()V
    .registers 3

    .prologue
    .line 356
    const-string v0, "LBAdController"

    const-string v1, "setNotification called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    .line 359
    const-string v0, "LBAdController"

    const-string v1, "Results are null - no notification will be loaded"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_12
    :goto_12
    return-void

    .line 365
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    if-eqz v0, :cond_22

    .line 367
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationDetails()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_12

    .line 396
    :catch_1b
    move-exception v0

    .line 397
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12

    .line 369
    :cond_22
    :try_start_22
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    if-eqz v0, :cond_2a

    .line 371
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationTimerDetails()V

    goto :goto_12

    .line 376
    :cond_2a
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 378
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "notificationtype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v1, "Immediate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 381
    const-string v0, "LBAdController"

    const-string v1, "Immediate notification to be fired"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "App"

    invoke-virtual {p0, v0}, Lcom/pad/android/xappad/AdController;->loadNotificationOnRequest(Ljava/lang/String;)V

    goto :goto_12

    .line 384
    :cond_57
    const-string v1, "Recurring"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 386
    const-string v0, "LBAdController"

    const-string v1, "Recurring notification to be created"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationOnTimer()V

    goto :goto_12

    .line 392
    :cond_6a
    const-string v0, "LBAdController"

    const-string v1, "Notification not be set for this user"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_71} :catch_1b

    goto :goto_12
.end method

.method private setReminder()V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 252
    const-string v1, "LBAdController"

    const-string v2, "setReminder called"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-eqz v1, :cond_113

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v2, "remindertype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_113

    .line 255
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 256
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 257
    const-string v1, "1"

    .line 260
    :try_start_25
    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v5, "remindertype"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "remindertext"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    iget-object v6, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v7, "remindershow"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SD_REMINDER_SHOWN_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    const-string v7, "always"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_114

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 265
    :goto_64
    if-eqz v0, :cond_158

    .line 267
    const-string v0, "display"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 269
    const-string v0, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Reminder Type Set - "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/pad/android/xappad/AdReminderNotification;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v2, "sectionid"

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "alarmtype"

    const-string v4, "reminder"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v2, "remindertitle"

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "remindertitle"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "remindertext"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v2, "remindericon"

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v5, "remindericon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v6, "reminderstart"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 281
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_e3} :catch_137

    .line 285
    const/4 v6, 0x0

    :try_start_e4
    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_117

    move-object v0, v1

    .line 301
    :goto_e8
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reminder Set, set preference to "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD_REMINDER_SHOWN_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    :cond_113
    return-void

    .line 264
    :cond_114
    const/4 v0, 0x1

    goto/16 :goto_64

    .line 287
    :catch_117
    move-exception v0

    .line 289
    :try_start_118
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 290
    const-string v2, "AdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while trying to set reminder alarm - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_135} :catch_137

    move-object v0, v1

    goto :goto_e8

    .line 295
    :catch_137
    move-exception v0

    .line 297
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error in setReminder - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "0"

    goto :goto_e8

    :cond_158
    move-object v0, v1

    goto :goto_e8
.end method

.method private setResumeAlarm()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 517
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v2, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    const-string v1, "sectionid"

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
    const-wide/32 v2, 0x15f900

    add-long/2addr v0, v2

    .line 526
    :try_start_2f
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 528
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_3f

    .line 534
    :goto_3e
    return-void

    .line 530
    :catch_3f
    move-exception v0

    .line 531
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 532
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while trying to set pause alarm - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method


# virtual methods
.method public initialize()V
    .registers 7

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    if-eqz v0, :cond_1e

    const-string v4, "notification"

    .line 177
    :goto_6
    new-instance v0, Lcom/pad/android/xappad/AdTask;

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v5, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pad/android/xappad/AdTask;-><init>(Lcom/pad/android/xappad/AdController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/pad/android/xappad/AdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    return-void

    .line 176
    :cond_1e
    const-string v4, "icon"

    goto :goto_6
.end method

.method public initialized()V
    .registers 5

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    .line 192
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    if-eqz v0, :cond_59

    .line 194
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    if-eqz v0, :cond_33

    .line 196
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD_NOTIFICATION_REQUESTED_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    :cond_33
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "remindertype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 204
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setReminder()V

    .line 206
    :cond_40
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    const-string v1, "invalidateoptin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 208
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->invalidateOptin()V

    .line 211
    :cond_4d
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    if-eqz v0, :cond_55

    .line 213
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->displayIcon()V

    .line 229
    :cond_54
    :goto_54
    return-void

    .line 217
    :cond_55
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setNotification()V

    goto :goto_54

    .line 222
    :cond_59
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    if-nez v0, :cond_54

    .line 225
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setAlarmFromCookie()V

    goto :goto_54
.end method

.method public loadIcon()V
    .registers 6

    .prologue
    .line 859
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 860
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "notset"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    const-string v2, "SD_APP_OPTIN_SHOWN"

    const-string v3, "notset"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    const-string v3, "notset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 864
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    new-instance v4, Lcom/pad/android/xappad/AdController$2;

    invoke-direct {v4, p0}, Lcom/pad/android/xappad/AdController$2;-><init>(Lcom/pad/android/xappad/AdController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;)V

    .line 870
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 892
    :goto_36
    return-void

    .line 872
    :cond_37
    const-string v3, "notset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 875
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 876
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_36

    .line 881
    :cond_56
    const-string v0, "LBAdController"

    const-string v1, "loadIcon called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_68

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 885
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    goto :goto_36

    .line 889
    :cond_68
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->displayIcon()V

    goto :goto_36
.end method

.method public loadNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 315
    const-string v0, "LBAdController"

    const-string v1, "loadNotification called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "notset"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-string v2, "SD_APP_OPTIN"

    const-string v3, "notset"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    const-string v3, "notset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 322
    const-string v0, "LBAdController"

    const-string v1, "optin not set, do optin first..."

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    new-instance v4, Lcom/pad/android/xappad/AdController$1;

    invoke-direct {v4, p0}, Lcom/pad/android/xappad/AdController$1;-><init>(Lcom/pad/android/xappad/AdController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;)V

    .line 329
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    :cond_44
    :goto_44
    return-void

    .line 331
    :cond_45
    const-string v3, "notset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_44

    .line 340
    :cond_64
    const-string v0, "LBAdController"

    const-string v1, "optin already done - loadNotification"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_44

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 345
    iput-boolean v5, p0, Lcom/pad/android/xappad/AdController;->loadIcon:Z

    .line 346
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    .line 347
    iput-boolean v5, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 348
    iput-boolean v5, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 349
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    goto :goto_44
.end method

.method public loadNotificationOnRequest(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 696
    const-string v0, "App"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "Alarm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 698
    :cond_11
    const-string v0, "LBAdController"

    const-string v1, "loadNotificationOnRequest called"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->notificationLaunchType:Ljava/lang/String;

    .line 701
    iget-boolean v0, p0, Lcom/pad/android/xappad/AdController;->initialized:Z

    if-nez v0, :cond_29

    .line 703
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->useNotification:Z

    .line 704
    iput-boolean v2, p0, Lcom/pad/android/xappad/AdController;->onRequest:Z

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pad/android/xappad/AdController;->onTimer:Z

    .line 706
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->initialize()V

    .line 717
    :goto_28
    return-void

    .line 710
    :cond_29
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->loadNotificationDetails()V

    goto :goto_28

    .line 715
    :cond_2d
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal use of loadNotificationOnRequest. LaunchType used = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public loadOptin(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    if-eqz p1, :cond_12

    .line 162
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 164
    new-instance v0, Lcom/pad/android/util/AdOptinRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/pad/android/util/AdOptinRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;)V

    .line 165
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    :cond_12
    :goto_12
    return-void

    .line 169
    :cond_13
    const-string v0, "com.pad.android.xappad.AdController"

    const-string v1, "Activity required for loadOptin - incorrect value passed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public pauseNotification()V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD_ADSTATUS_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hidden"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    invoke-virtual {p0}, Lcom/pad/android/xappad/AdController;->setPauseAlarm()V

    .line 116
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    if-eqz v0, :cond_32

    .line 120
    :try_start_2d
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdNotificationListener;->onAdNotificationPaused()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 128
    :cond_32
    :goto_32
    return-void

    .line 122
    :catch_33
    move-exception v0

    .line 124
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error with notification listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public resumeNotification()V
    .registers 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD_ADSTATUS_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    invoke-direct {p0}, Lcom/pad/android/xappad/AdController;->setResumeAlarm()V

    .line 144
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    if-eqz v0, :cond_32

    .line 148
    :try_start_2d
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->listenNotif:Lcom/pad/android/listener/AdNotificationListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdNotificationListener;->onAdNotificationResumed()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 156
    :cond_32
    :goto_32
    return-void

    .line 150
    :catch_33
    move-exception v0

    .line 152
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error with notification listener "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public setAsynchTask(Z)V
    .registers 2
    .parameter

    .prologue
    .line 84
    return-void
.end method

.method public setPauseAlarm()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    .line 494
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const-class v2, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    const-string v1, "sectionid"

    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    iget-object v1, p0, Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 499
    const-wide/32 v2, 0x5a4e9000

    add-long/2addr v0, v2

    .line 503
    :try_start_2f
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 505
    iget-object v2, p0, Lcom/pad/android/xappad/AdController;->am:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pad/android/xappad/AdController;->pendingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_3f

    .line 511
    :goto_3e
    return-void

    .line 507
    :catch_3f
    move-exception v0

    .line 508
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 509
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while trying to set pause alarm - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    if-eqz p1, :cond_4

    .line 185
    iput-object p1, p0, Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;

    .line 187
    :cond_4
    return-void
.end method
