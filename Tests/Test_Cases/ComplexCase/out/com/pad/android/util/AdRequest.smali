.class public Lcom/pad/android/util/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field private loadIcon:Z

.field private notificationLaunchType:Ljava/lang/String;

.field private requestInProgress:Z

.field private results:Lorg/json/JSONObject;

.field private sHeight:I

.field private sWidth:I

.field private sectionid:Ljava/lang/String;

.field private subid:Ljava/lang/String;

.field private tm:Landroid/telephony/TelephonyManager;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private useLocation:Z

.field private useNotification:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 39
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 40
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 42
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 52
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 39
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 40
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 42
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    .line 60
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    .line 62
    const-string v0, "notification"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 63
    const-string v0, "icon"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 64
    iput-object p4, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public makeLBRequest()Lorg/json/JSONObject;
    .registers 18

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    if-eqz v1, :cond_8

    .line 88
    const/4 v1, 0x0

    .line 246
    :goto_7
    return-object v1

    .line 92
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 94
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 95
    const/16 v2, 0x97

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0xfa

    .line 98
    int-to-long v1, v1

    :try_start_1b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_36e

    .line 102
    :goto_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-nez v1, :cond_104

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 103
    :goto_28
    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_bf

    .line 108
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 114
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 115
    const v2, 0x1020002

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 116
    if-le v2, v5, :cond_10a

    sub-int/2addr v2, v5

    .line 118
    :goto_6d
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    .line 119
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    .line 121
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Device Width = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Height = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "SBH = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TBH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_bf
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 126
    const-string v3, "http.protocol.version"

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 127
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_10d

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    .line 139
    :goto_ea
    const/4 v2, 0x2

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://ad.leadboltapps.net"

    aput-object v3, v12, v2

    const/4 v2, 0x1

    const-string v3, "http://ad.leadbolt.net"

    aput-object v3, v12, v2

    .line 142
    const/4 v3, 0x0

    .line 143
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_fb
    array-length v2, v12

    if-lt v8, v2, :cond_11e

    .line 246
    :cond_fe
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;

    goto/16 :goto_7

    .line 102
    :cond_104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    goto/16 :goto_28

    .line 116
    :cond_10a
    const/4 v2, 0x0

    goto/16 :goto_6d

    .line 136
    :cond_10d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    goto :goto_ea

    .line 146
    :cond_11e
    if-nez v9, :cond_fe

    .line 152
    aget-object v2, v12, v8

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/show_app.conf?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    if-eqz v3, :cond_2e6

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/show_notification?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_15a
    :goto_15a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&section_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&appId=null&optin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SD_APP_OPTIN"

    const-string v5, "0"

    invoke-interface {v10, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    if-eqz v4, :cond_224

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SD_ITERATION_COUNTER_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-interface {v10, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&iteration_counter="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&launch_type="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SD_NOTIFICATION_FIRED_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, -0x1

    invoke-interface {v10, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 171
    const-wide/16 v13, -0x1

    cmp-long v3, v5, v13

    if-nez v3, :cond_305

    const/4 v3, -0x1

    .line 172
    :goto_1f8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&notification_fired="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v5, "LBAdController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NotificationFired = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 175
    :cond_224
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    if-eqz v4, :cond_259

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SD_ICON_DISPLAY_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v10, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&icon_displayed_count="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_259
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pad/android/util/AdEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&get="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&section_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v13, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 191
    :try_start_2a3
    new-instance v14, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "ref"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->subid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->tokens:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    invoke-static/range {v1 .. v7}, Lcom/pad/android/util/AdRefValues;->adRefValues(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v13, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2d9} :catch_314

    .line 201
    :goto_2d9
    const/4 v2, 0x0

    move v4, v2

    move v3, v9

    .line 202
    :goto_2dc
    const/16 v2, 0xa

    if-lt v4, v2, :cond_31b

    .line 143
    :cond_2e0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto/16 :goto_fb

    .line 158
    :cond_2e6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    if-eqz v3, :cond_15a

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/show_app_icon.conf?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_15a

    .line 171
    :cond_305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v3, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v5, v13

    long-to-int v5, v5

    sub-int/2addr v3, v5

    goto/16 :goto_1f8

    .line 196
    :catch_314
    move-exception v2

    .line 198
    const-string v3, "LBAdController"

    invoke-static {v3, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2d9

    .line 204
    :cond_31b
    if-nez v3, :cond_2e0

    .line 214
    :try_start_31d
    invoke-interface {v11, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 216
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_348

    .line 218
    const/4 v3, 0x1

    .line 220
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 221
    if-eqz v2, :cond_348

    .line 224
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 225
    invoke-static {v2}, Lcom/pad/android/util/AdUtilFuncs;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 226
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_348
    .catchall {:try_start_31d .. :try_end_348} :catchall_367
    .catch Ljava/lang/Exception; {:try_start_31d .. :try_end_348} :catch_351

    .line 241
    :cond_348
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 243
    :goto_34d
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2dc

    .line 232
    :catch_351
    move-exception v2

    .line 234
    :try_start_352
    const-string v3, "LBAdController"

    invoke-static {v3, v2}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    const/4 v3, 0x0

    .line 236
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;
    :try_end_361
    .catchall {:try_start_352 .. :try_end_361} :catchall_367

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    goto :goto_34d

    .line 240
    :catchall_367
    move-exception v1

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 242
    throw v1

    .line 100
    :catch_36e
    move-exception v1

    goto/16 :goto_1e
.end method

.method public setSubId(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->subid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->tokens:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setUseLocation(Z)V
    .registers 5
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 80
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUseLocation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
