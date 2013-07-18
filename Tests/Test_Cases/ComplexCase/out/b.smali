.class public final Lb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/Utils;->manageUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    sget-boolean v0, Lcom/bugsense/trace/G;->proxyEnabled:Z

    if-nez v0, :cond_a7

    sget-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    :cond_3a
    :goto_3a
    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_72

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash     URL set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analytics URL set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    invoke-static {v3}, Lcom/bugsense/trace/models/PingsMechanism;->transmitPingASync(I)V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->a(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->a(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastping"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->flush(Landroid/content/Context;)V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->startSession(Landroid/content/Context;)V

    return-void

    :cond_a7
    const-string v0, "http://alt.bugsense.appspot.com/api/errors"

    sput-object v0, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    sget-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://alt.bugsense.com/api/ticks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    goto/16 :goto_3a
.end method
