.class public Lcom/pad/android/util/AdOptinRequest;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final LB_LOG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private oListener:Lcom/pad/android/listener/AdOptinListener;

.field private optinValues:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    const-string v0, "LBAdController"

    iput-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->LB_LOG:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 41
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 49
    iput-object p1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 53
    return-void
.end method

.method private makeOptinRequest()Lorg/json/JSONObject;
    .registers 18

    .prologue
    .line 71
    const/4 v5, 0x0

    .line 72
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdOptin started - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-nez v1, :cond_4f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v1, :cond_11a

    .line 76
    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_11b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 77
    :goto_59
    const-string v2, "Preference"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    const-string v3, "SD_APP_OPTIN_SHOWN"

    const-string v4, "notset"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, ""

    .line 80
    const-string v3, "notset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 82
    :cond_7a
    const-string v2, "LBAdController"

    const-string v3, "Cookie is ok, going to check internet"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 85
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_11a

    .line 88
    const-string v2, "LBAdController"

    const-string v3, "Internet available - going to make the request"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_dd

    .line 94
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 100
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 101
    const v2, 0x1020002

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 102
    if-le v2, v7, :cond_121

    sub-int/2addr v2, v7

    .line 104
    :goto_d6
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v7

    sub-int v7, v3, v2

    .line 108
    :cond_dd
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 109
    const-string v3, "http.protocol.version"

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 110
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_123

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 121
    :goto_104
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "http://ad.leadboltapps.net"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "http://ad.leadbolt.net"

    aput-object v4, v12, v3

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v3, 0x0

    move v8, v3

    move v9, v4

    move-object v10, v5

    :goto_116
    array-length v3, v12

    if-lt v8, v3, :cond_130

    move-object v5, v10

    .line 199
    :cond_11a
    :goto_11a
    return-object v5

    .line 76
    :cond_11b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto/16 :goto_59

    .line 102
    :cond_121
    const/4 v2, 0x0

    goto :goto_d6

    .line 118
    :cond_123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    goto :goto_104

    .line 127
    :cond_130
    if-eqz v9, :cond_134

    move-object v5, v10

    .line 129
    goto :goto_11a

    .line 133
    :cond_134
    aget-object v3, v12, v8

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/optin.php?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&section_id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v13, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 142
    :try_start_169
    new-instance v14, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "ref"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/pad/android/util/AdRefValues;->adRefValues(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v13, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_18b} :catch_195

    :goto_18b
    move v4, v9

    move-object v5, v10

    .line 155
    :cond_18d
    :goto_18d
    if-eqz v4, :cond_19c

    .line 124
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v9, v4

    move-object v10, v5

    goto :goto_116

    .line 147
    :catch_195
    move-exception v3

    .line 149
    const-string v4, "LBAdController"

    invoke-static {v4, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18b

    .line 165
    :cond_19c
    :try_start_19c
    invoke-interface {v11, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 167
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_18d

    .line 169
    const/4 v4, 0x1

    .line 171
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_18d

    .line 175
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 176
    invoke-static {v3}, Lcom/pad/android/util/AdUtilFuncs;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1ba} :catch_1e1

    move-result-object v3

    .line 179
    :try_start_1bb
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1c0
    .catch Lorg/json/JSONException; {:try_start_1bb .. :try_end_1c0} :catch_1c2
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c0} :catch_1e1

    move-object v5, v10

    goto :goto_18d

    .line 181
    :catch_1c2
    move-exception v3

    .line 183
    :try_start_1c3
    const-string v9, "LBAdController"

    invoke-static {v9, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Error in creating JSON Object for Optin - "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1e0} :catch_1e1

    goto :goto_18d

    .line 189
    :catch_1e1
    move-exception v3

    .line 191
    const-string v9, "LBAdController"

    invoke-static {v9, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18d
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/util/AdOptinRequest;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 59
    :goto_6
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1c

    .line 64
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinRequest;->makeOptinRequest()Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    :goto_18
    return-object v0

    .line 58
    :cond_19
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto :goto_6

    .line 66
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pad/android/util/AdOptinRequest;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 204
    if-nez p1, :cond_d

    .line 206
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_c

    .line 208
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 343
    :cond_c
    :goto_c
    return-void

    .line 212
    :cond_d
    iput-object p1, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    .line 213
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v0, :cond_1b3

    :cond_17
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    if-eqz v0, :cond_1b3

    .line 215
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 216
    :goto_21
    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    .line 222
    const-string v1, ""

    const-string v0, ""

    .line 225
    :try_start_34
    iget-object v3, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v4, "optintype"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v3, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v4, "optintext"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_43} :catch_1be

    move-result-object v0

    .line 230
    :goto_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v4, :cond_d1

    .line 235
    const-string v4, "LBAdController"

    const-string v5, "Context not null, so just flash toast...."

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v4, "display"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    const-string v4, "confirm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    const-string v4, "webconfirm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 239
    :cond_78
    iget-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    const-string v0, "SD_APP_OPTIN"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    :cond_8a
    :goto_8a
    const-string v0, "SD_APP_OPTIN_SHOWN"

    const-string v1, "1"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_9d

    .line 259
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 332
    :cond_9d
    :goto_9d
    const-string v0, "SD_APP_OPTIN_SHOWN"

    const-string v1, "1"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_c

    .line 215
    :cond_a9
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto/16 :goto_21

    .line 243
    :cond_ad
    const-string v0, "deny"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 246
    const-string v0, "SD_APP_OPTIN"

    const-string v1, "0"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8a

    .line 249
    :cond_c0
    const-string v0, "nodisplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 252
    const-string v0, "SD_APP_OPTIN"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_8a

    .line 264
    :cond_d1
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "values received = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-ne v4, v7, :cond_fe

    .line 268
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_c

    .line 274
    :cond_fe
    const-string v4, "display"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 277
    iget-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_131

    .line 279
    iget-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    :goto_117
    const-string v0, "SD_APP_OPTIN"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v0, "SD_APP_OPTIN_SHOWN"

    const-string v1, "1"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_9d

    .line 292
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_9d

    .line 283
    :cond_131
    iget-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_117

    .line 295
    :cond_13b
    const-string v0, "deny"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 298
    const-string v0, "SD_APP_OPTIN"

    const-string v1, "0"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_9d

    .line 303
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_9d

    .line 306
    :cond_158
    const-string v0, "nodisplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 309
    const-string v0, "SD_APP_OPTIN"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_9d

    .line 314
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_9d

    .line 317
    :cond_173
    const-string v0, "webconfirm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 319
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v1, "weboptinurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 323
    :try_start_185
    new-instance v0, Lcom/pad/android/util/AdOptinView;

    iget-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v5, "weboptinurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-direct {v0, v1, v3, v4}, Lcom/pad/android/util/AdOptinView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1a9} :catch_1ab

    goto/16 :goto_9d

    .line 325
    :catch_1ab
    move-exception v0

    .line 327
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_9d

    .line 338
    :cond_1b3
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v0, :cond_c

    .line 340
    iget-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_c

    .line 228
    :catch_1be
    move-exception v3

    goto/16 :goto_44
.end method
