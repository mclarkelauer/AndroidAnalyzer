.class public Lcom/bugsense/trace/BugSenseHandler;
.super Ljava/lang/Object;


# static fields
.field public static I_WANT_TO_DEBUG:Z

.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static d:Lcom/bugsense/trace/ActivityAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bugsense/trace/ActivityAsyncTask",
            "<",
            "Ld;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Landroid/content/SharedPreferences;

.field private static g:Landroid/content/SharedPreferences$Editor;

.field public static gContext:Landroid/content/Context;

.field private static h:Lcom/bugsense/trace/ExceptionCallback;

.field private static i:Z

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static sMinDelay:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    sput v1, Lcom/bugsense/trace/BugSenseHandler;->sMinDelay:I

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->h:Lcom/bugsense/trace/ExceptionCallback;

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .registers 1

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->g:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public static synthetic a()Landroid/content/SharedPreferences;
    .registers 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 1

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ld;Ljava/lang/String;)V
    .registers 6

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_14

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your BugSense API Key is invalid!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    sput-object p2, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->c()V

    invoke-interface {p1}, Ld;->a()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->PHONE_MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSIONCODE:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_49} :catch_a3

    :cond_49
    :goto_49
    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->e:Z

    if-eqz v0, :cond_64

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->d:Lcom/bugsense/trace/ActivityAsyncTask;

    if-eqz v0, :cond_64

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->d:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v0}, Lcom/bugsense/trace/ActivityAsyncTask;->postProcessingDone()Z

    move-result v0

    if-nez v0, :cond_64

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->d:Lcom/bugsense/trace/ActivityAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->d:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    :cond_64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->e:Z

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_8f

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Files Path set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    invoke-static {}, Lcom/bugsense/trace/Utils;->checkForRoot()Z

    move-result v0

    sput-boolean v0, Lcom/bugsense/trace/G;->HAS_ROOT:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lb;

    invoke-direct {v1}, Lb;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catch_a3
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error collecting information about the package!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_49
.end method

.method public static addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addCrashExtraMap(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    :cond_b
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v2, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_33
    return-void
.end method

.method public static synthetic b()Landroid/content/SharedPreferences$Editor;
    .registers 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->g:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private static c()V
    .registers 4

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Registering default exceptions handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_31

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_31

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current handler class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    instance-of v1, v0, Lcom/bugsense/trace/DefaultExceptionHandler;

    if-nez v1, :cond_3d

    new-instance v1, Lcom/bugsense/trace/DefaultExceptionHandler;

    invoke-direct {v1, v0}, Lcom/bugsense/trace/DefaultExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3d
    return-void
.end method

.method public static clearCrashExtraData()V
    .registers 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_b
.end method

.method public static closeSession(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->i:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bugsense/trace/models/PingsMechanism;->savePing(I)V

    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Flushing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/bugsense/trace/models/PingsMechanism;->getInstance()Lcom/bugsense/trace/models/PingsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/PingsMechanism;->sendSavedPings()V

    invoke-static {}, Lcom/bugsense/trace/models/CrashMechanism;->getInstance()Lcom/bugsense/trace/models/CrashMechanism;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsense/trace/models/CrashMechanism;->sendSavedCrashes(Landroid/content/Context;)V

    invoke-static {}, Lcom/bugsense/trace/models/EventsMechanism;->getInstance()Lcom/bugsense/trace/models/EventsMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsense/trace/models/EventsMechanism;->sendSavedEvents()V

    return-void
.end method

.method protected static getCallback()Lcom/bugsense/trace/ExceptionCallback;
    .registers 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->h:Lcom/bugsense/trace/ExceptionCallback;

    return-object v0
.end method

.method public static getCrashExtraData()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bugsense/trace/BugSenseHandler;->a(Landroid/content/Context;Ld;Ljava/lang/String;)V

    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x10

    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    :cond_d
    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_1b

    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    sget-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_42

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BreadCrumb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method public static removeCrashExtraData(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendEvent(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/bugsense/trace/models/EventsMechanism;->saveEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static sendException(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, p0}, Lcom/bugsense/trace/BugSenseHandler;->sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-void
.end method

.method public static sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sget-object v2, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    if-nez v2, :cond_16

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Could not send: API Key is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void

    :cond_16
    sget-object v2, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v3, "Saving handled exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-wide/16 v9, 0x0

    :try_start_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/bugsense/trace/G;->TIMESTAMP:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_78

    sub-long v9, v2, v4

    :goto_2a
    :try_start_2a
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v11, ""
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_62

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bugsense/trace/Utils;->isWifiOn(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/bugsense/trace/Utils;->isMobileNetworkOn(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bugsense/trace/Utils;->isGPSOn(Landroid/content/Context;)I

    move-result v3

    sget-object v4, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bugsense/trace/Utils;->ScreenProperties(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCrashExtraData()Ljava/util/HashMap;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v10}, Lcom/bugsense/trace/models/CrashMechanism;->createJSONFromCrash(Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IJ)Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5c} :catch_72

    move-result-object v0

    :goto_5d
    const/4 v1, 0x0

    :try_start_5e
    invoke-static {v0, v1}, Lcom/bugsense/trace/models/CrashMechanism;->saveCrash(Ljava/lang/String;I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_15

    :catch_62
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Failed to save handled exception "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :catch_72
    move-exception v0

    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_62

    move-object v0, v11

    goto :goto_5d

    :catch_78
    move-exception v2

    goto :goto_2a
.end method

.method public static sendExceptionMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    invoke-static {p1}, Lcom/bugsense/trace/Utils;->exceedLimitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    invoke-static {v0, p2}, Lcom/bugsense/trace/BugSenseHandler;->sendExceptionMap(Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-void
.end method

.method public static setExceptionCallback(Lcom/bugsense/trace/ExceptionCallback;)V
    .registers 1

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->h:Lcom/bugsense/trace/ExceptionCallback;

    return-void
.end method

.method public static setLocalizedNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->a:Ljava/lang/String;

    sput-object p1, Lcom/bugsense/trace/BugSenseHandler;->b:Ljava/lang/String;

    sput-object p2, Lcom/bugsense/trace/BugSenseHandler;->c:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(I)V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    return-void
.end method

.method public static setLogging(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    sput-object p1, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput-object p0, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static setLogging(Z)V
    .registers 1

    sput-boolean p0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .registers 10

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->c()V

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->i:Z

    if-nez v0, :cond_50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bugsense/trace/G;->TIMESTAMP:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->i:Z

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastping"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_50

    :cond_3c
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastping"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v8}, Lcom/bugsense/trace/models/PingsMechanism;->savePing(I)V

    :cond_50
    return-void
.end method

.method public static useProxy(Z)V
    .registers 1

    sput-boolean p0, Lcom/bugsense/trace/G;->proxyEnabled:Z

    return-void
.end method
