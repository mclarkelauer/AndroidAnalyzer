.class public abstract Lcom/pad/android/xappad/AdWakeLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 16
    sget-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_9

    .line 18
    sget-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    :cond_9
    :try_start_9
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 24
    const v1, 0x3000001a

    const-string v2, "AdControllerWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    sget-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_22

    .line 32
    :goto_21
    return-void

    .line 27
    :catch_22
    move-exception v0

    .line 29
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error acquiring Wake Lock - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_21
.end method

.method public static release()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 37
    :try_start_1
    sget-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_a

    .line 39
    sget-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    :cond_a
    const/4 v0, 0x0

    sput-object v0, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    .line 49
    :goto_d
    return-void

    .line 43
    :catch_e
    move-exception v0

    .line 45
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error releasing Wake Lock - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    sput-object v4, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_d
.end method
