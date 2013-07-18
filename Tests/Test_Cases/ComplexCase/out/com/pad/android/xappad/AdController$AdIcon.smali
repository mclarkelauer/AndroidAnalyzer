.class Lcom/pad/android/xappad/AdController$AdIcon;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/xappad/AdController;


# direct methods
.method private constructor <init>(Lcom/pad/android/xappad/AdController;)V
    .registers 2
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pad/android/xappad/AdController;Lcom/pad/android/xappad/AdController$AdIcon;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/pad/android/xappad/AdController$AdIcon;-><init>(Lcom/pad/android/xappad/AdController;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/xappad/AdController$AdIcon;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x5

    .line 924
    :try_start_2
    const-string v0, "LBAdController"

    const-string v1, "going to display icon"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v1, "Search"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_1b7

    .line 928
    :try_start_b
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "adname"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_15f

    move-result-object v0

    move-object v3, v0

    .line 934
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_ICON_DISPLAY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v1}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 936
    if-ge v5, v6, :cond_1d9

    .line 939
    const-string v0, "LBAdController"

    const-string v1, "MAX count not passed so display icon"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const v6, 0x1080059

    .line 941
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v8}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "adurl"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v8}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 942
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 943
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 944
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_88} :catch_1b7

    .line 947
    :try_start_88
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adiconurl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 950
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 951
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 953
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v0

    const-string v8, "window"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 954
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 955
    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 958
    const/16 v0, 0xf0

    .line 959
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 960
    const/16 v0, 0x48

    const/16 v8, 0x48

    const/4 v9, 0x1

    invoke-static {v1, v0, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 962
    if-eqz v0, :cond_168

    .line 964
    const-string v1, "LBAdController"

    const-string v8, "bitmap not null"

    invoke-static {v1, v8}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_dd} :catch_180

    .line 985
    :goto_dd
    :try_start_dd
    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SD_ICON_DISPLAY_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 991
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 998
    :goto_10c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 999
    const-string v1, "title"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v1, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "adurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/xappad/AdController;->access$2(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v1, "bookmark"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_148} :catch_1b7

    .line 1004
    :try_start_148
    iget-object v1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1005
    const-string v0, "LBAdController"

    const-string v1, "bookmark inserted successfully"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_15e} :catch_1fa

    .line 1017
    :goto_15e
    return-object v2

    .line 930
    :catch_15f
    move-exception v0

    .line 932
    :try_start_160
    const-string v3, "LBAdController"

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_165} :catch_1b7

    move-object v3, v1

    goto/16 :goto_18

    .line 969
    :cond_168
    :try_start_168
    const-string v0, "LBAdController"

    const-string v1, "bitmap null"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_17e} :catch_180

    goto/16 :goto_dd

    .line 973
    :catch_180
    move-exception v0

    .line 978
    :try_start_181
    iget-object v1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/pad/android/xappad/AdController;->access$0(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v8, "adiconurl"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18c} :catch_1d6

    move-result-object v1

    .line 981
    :goto_18d
    :try_start_18d
    const-string v8, "LBAdController"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "exception in getting icon - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 983
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v1, p0, Lcom/pad/android/xappad/AdController$AdIcon;->this$0:Lcom/pad/android/xappad/AdController;

    #getter for: Lcom/pad/android/xappad/AdController;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/pad/android/xappad/AdController;->access$1(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1b5} :catch_1b7

    goto/16 :goto_dd

    .line 1012
    :catch_1b7
    move-exception v0

    .line 1014
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1015
    const-string v1, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when setting icon - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e

    .line 980
    :catch_1d6
    move-exception v1

    move-object v1, v2

    goto :goto_18d

    .line 995
    :cond_1d9
    :try_start_1d9
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "DisplayCount = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", MAX_APP_ICONS = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10c

    .line 1007
    :catch_1fa
    move-exception v0

    .line 1009
    const-string v0, "LBAdController"

    const-string v1, "bookmark inserted error"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_202} :catch_1b7

    goto/16 :goto_15e
.end method
