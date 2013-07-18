.class public Lcom/pad/android/util/AdUtilFuncs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 20
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_47
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_36

    move-result-object v2

    if-nez v2, :cond_1f

    .line 39
    :try_start_17
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_53

    .line 46
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1f
    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_47
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_35} :catch_36

    goto :goto_11

    .line 31
    :catch_36
    move-exception v0

    .line 33
    :try_start_37
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_47

    .line 39
    :try_start_3c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_1a

    .line 41
    :catch_40
    move-exception v0

    .line 43
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a

    .line 36
    :catchall_47
    move-exception v0

    .line 39
    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 45
    :goto_4b
    throw v0

    .line 41
    :catch_4c
    move-exception v1

    .line 43
    const-string v2, "LBAdController"

    invoke-static {v2, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4b

    .line 41
    :catch_53
    move-exception v0

    .line 43
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a
.end method
