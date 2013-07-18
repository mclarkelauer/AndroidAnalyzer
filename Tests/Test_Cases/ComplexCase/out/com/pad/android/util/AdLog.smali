.class public Lcom/pad/android/util/AdLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static doLog:Z

.field private static myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    sget-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    if-eqz v0, :cond_a

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p0, p1}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 33
    sget-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    if-eqz v0, :cond_a

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p0, p1}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_a
    return-void
.end method

.method public static enableLog(Z)V
    .registers 4
    .parameter

    .prologue
    .line 18
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableLog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sput-boolean p0, Lcom/pad/android/util/AdLog;->doLog:Z

    .line 20
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    sget-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    if-eqz v0, :cond_a

    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {p0, p1}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_a
    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 70
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0, v0}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static sendToTextView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/pad/android/util/AdLog;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_20

    .line 85
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v2, "tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 90
    sget-object v1, Lcom/pad/android/util/AdLog;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    :cond_20
    return-void
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .registers 1
    .parameter

    .prologue
    .line 78
    sput-object p0, Lcom/pad/android/util/AdLog;->myHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    sget-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    if-eqz v0, :cond_a

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0, p1}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    sget-boolean v0, Lcom/pad/android/util/AdLog;->doLog:Z

    if-eqz v0, :cond_a

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p0, p1}, Lcom/pad/android/util/AdLog;->sendToTextView(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_a
    return-void
.end method
