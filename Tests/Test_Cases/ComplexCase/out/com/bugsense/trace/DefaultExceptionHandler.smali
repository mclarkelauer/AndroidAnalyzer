.class public Lcom/bugsense/trace/DefaultExceptionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsense/trace/DefaultExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 16

    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-wide/16 v9, 0x0

    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bugsense/trace/G;->TIMESTAMP:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_ef

    sub-long v9, v0, v2

    :goto_17
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "sysMemAvail"

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sysMemLow"

    iget-boolean v3, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sysMemThreshold"

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appMemAvail"

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appMemMax"

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appMemTotal"

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4130

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bugsense/trace/BugSenseHandler;->addCrashExtraData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, ""

    :try_start_8b
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v0 .. v10}, Lcom/bugsense/trace/models/CrashMechanism;->createJSONFromCrash(Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IJ)Ljava/lang/String;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_b8} :catch_e4

    move-result-object v0

    :goto_b9
    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/bugsense/trace/models/CrashMechanism;->transmitCrashASync(Landroid/content/Context;Ljava/lang/String;I)V

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_cc

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getCallback()Lcom/bugsense/trace/ExceptionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/bugsense/trace/ExceptionCallback;->lastBreath()V

    :cond_d9
    const-wide/16 v0, 0xbb8

    :try_start_db
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_de
    .catch Ljava/lang/InterruptedException; {:try_start_db .. :try_end_de} :catch_ea

    :goto_de
    iget-object v0, p0, Lcom/bugsense/trace/DefaultExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_e4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    goto :goto_b9

    :catch_ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_de

    :catch_ef
    move-exception v0

    goto/16 :goto_17
.end method
