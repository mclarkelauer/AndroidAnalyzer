.class public Lcom/bugsense/trace/Utils;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_DONT_KNOW:I = 0x2

.field public static final STATE_OFF:I = 0x0

.field public static final STATE_ON:I = 0x1

.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/bugsense/trace/Utils;->a:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static ScreenProperties(Landroid/content/Context;)[Ljava/lang/String;
    .registers 12

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Not available"

    aput-object v0, v1, v6

    const-string v0, "Not available"

    aput-object v0, v1, v7

    const-string v0, "Not available"

    aput-object v0, v1, v8

    const-string v0, "Not available"

    aput-object v0, v1, v9

    const-string v0, "Not available"

    aput-object v0, v1, v10

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, ""

    packed-switch v5, :pswitch_data_6c

    :goto_4a
    aput-object v0, v1, v8

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    return-object v1

    :pswitch_60
    const-string v0, "normal"

    goto :goto_4a

    :pswitch_63
    const-string v0, "180"

    goto :goto_4a

    :pswitch_66
    const-string v0, "270"

    goto :goto_4a

    :pswitch_69
    const-string v0, "90"

    goto :goto_4a

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_60
        :pswitch_69
        :pswitch_63
        :pswitch_66
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    sget-object v3, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1d
    if-ge v1, v3, :cond_36

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_32

    const/4 v0, 0x1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_35
    const/4 v0, 0x2

    :cond_36
    return v0
.end method

.method private static a()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x100

    const/16 v6, 0x2a

    :try_start_22
    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_93

    :goto_25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide v5, 0x40efffe000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_6f
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6f .. :try_end_7e} :catch_89
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_7e} :catch_8e

    move-result-object v0

    :goto_7f
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/bugsense/trace/Utils;->a([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :catch_89
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_7f

    :catch_8e
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_7f

    :catch_93
    move-exception v4

    goto :goto_25
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .registers 7

    if-eqz p0, :cond_42

    const/4 v2, 0x0

    :try_start_3
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_15

    :try_start_8
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_4e

    const/4 v0, 0x1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_14
    :goto_14
    return v0

    :catch_15
    move-exception v0

    move-object v1, v2

    :goto_17
    :try_start_17
    sget-object v2, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v3, "Cannot save uid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v2, :cond_3d

    sget-object v2, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot save uid, path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_4c

    :cond_3d
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_42
    const/4 v0, 0x0

    goto :goto_14

    :catchall_44
    move-exception v0

    move-object v1, v2

    :goto_46
    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_4b
    throw v0

    :catchall_4c
    move-exception v0

    goto :goto_46

    :catch_4e
    move-exception v0

    goto :goto_17
.end method

.method private static a(Z)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    if-nez p0, :cond_1c

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static a([B)[C
    .registers 8

    const/4 v0, 0x0

    array-length v2, p0

    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_26

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/bugsense/trace/Utils;->a:[C

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/bugsense/trace/Utils;->a:[C

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_26
    return-object v3
.end method

.method protected static checkForRoot()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/sbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_2e
    if-ge v2, v4, :cond_54

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "su"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_51

    :goto_50
    return v0

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_54
    move v0, v1

    goto :goto_50
.end method

.method public static final exceedLimitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x80

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    :cond_b
    const-string p0, ""

    :cond_d
    :goto_d
    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x7d

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d
.end method

.method protected static isGPSOn(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    sget-object v3, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x2

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method protected static isMobileNetworkOn(Landroid/content/Context;)I
    .registers 2

    const-string v0, "MOBILE"

    invoke-static {p0, v0}, Lcom/bugsense/trace/Utils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isOnWifi(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    const-string v1, "WIFI"

    invoke-static {p0, v1}, Lcom/bugsense/trace/Utils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static isWifiOn(Landroid/content/Context;)I
    .registers 2

    const-string v0, "WIFI"

    invoke-static {p0, v0}, Lcom/bugsense/trace/Utils;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized manageUid(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v10, 0x20

    const-class v5, Lcom/bugsense/trace/Utils;

    monitor-enter v5

    :try_start_8
    sget-object v0, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v10, :cond_18

    sget-object v0, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_f4

    :goto_16
    monitor-exit v5

    return-object v0

    :cond_18
    :try_start_18
    const-string v0, ""

    new-instance v6, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".bugsense"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".bugsense"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_67
    .catchall {:try_start_18 .. :try_end_67} :catchall_f4

    move-result v2

    if-eqz v2, :cond_8b

    :try_start_6a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_78} :catch_105

    if-eqz v2, :cond_7e

    :try_start_7a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_109

    move-result-object v0

    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_ef

    :goto_81
    if-eqz v0, :cond_89

    :try_start_83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v10, :cond_8b

    :cond_89
    const-string v0, ""

    :cond_8b
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v10, :cond_110

    :cond_93
    if-eqz v7, :cond_110

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_98
    .catchall {:try_start_83 .. :try_end_98} :catchall_f4

    move-result v2

    if-eqz v2, :cond_110

    :try_start_9b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a9} :catch_f7

    if-eqz v2, :cond_af

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_102

    move-result-object v0

    :cond_af
    :goto_af
    :try_start_af
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_fa

    :goto_b2
    if-eqz v0, :cond_ba

    :try_start_b4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v10, :cond_110

    :cond_ba
    const-string v0, ""

    move-object v2, v0

    :goto_bd
    if-eqz v2, :cond_c5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v10, :cond_10e

    :cond_c5
    invoke-static {}, Lcom/bugsense/trace/Utils;->a()Ljava/lang/String;

    move-result-object v2

    move v0, v4

    :goto_ca
    sput-object v2, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;
    :try_end_cc
    .catchall {:try_start_b4 .. :try_end_cc} :catchall_f4

    if-eqz v0, :cond_ec

    const/4 v0, 0x1

    :try_start_cf
    invoke-static {v0}, Lcom/bugsense/trace/Utils;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    sget-object v4, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10c

    invoke-static {v6, v2}, Lcom/bugsense/trace/Utils;->a(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_f4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e6} :catch_ff

    move-result v0

    :goto_e7
    if-nez v0, :cond_ec

    :try_start_e9
    invoke-static {v7, v2}, Lcom/bugsense/trace/Utils;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_ec
    move-object v0, v2

    goto/16 :goto_16

    :catch_ef
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_e9 .. :try_end_f3} :catchall_f4

    goto :goto_81

    :catchall_f4
    move-exception v0

    monitor-exit v5

    throw v0

    :catch_f7
    move-exception v2

    :goto_f8
    move-object v2, v3

    goto :goto_af

    :catch_fa
    move-exception v2

    :try_start_fb
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fe
    .catchall {:try_start_fb .. :try_end_fe} :catchall_f4

    goto :goto_b2

    :catch_ff
    move-exception v0

    move v0, v1

    goto :goto_e7

    :catch_102
    move-exception v3

    move-object v3, v2

    goto :goto_f8

    :catch_105
    move-exception v2

    move-object v2, v3

    goto/16 :goto_7e

    :catch_109
    move-exception v8

    goto/16 :goto_7e

    :cond_10c
    move v0, v1

    goto :goto_e7

    :cond_10e
    move v0, v1

    goto :goto_ca

    :cond_110
    move-object v2, v0

    goto :goto_bd
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_46

    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_10

    :catch_1a
    move-exception v1

    :goto_1b
    if-eqz v0, :cond_20

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_30

    :cond_20
    :goto_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    if-eqz v0, :cond_20

    :try_start_27
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_20

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    :catchall_35
    move-exception v0

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    throw v0

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catchall_41
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_36

    :catch_46
    move-exception v0

    move-object v0, v1

    goto :goto_1b
.end method

.method public static readLogs()Ljava/lang/String;
    .registers 6

    sget v0, Lcom/bugsense/trace/G;->LOG_LINES:I

    if-gez v0, :cond_6

    const/16 v0, 0x64

    :cond_6
    sget-object v1, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logcat -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_3b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_44} :catch_45

    goto :goto_3b

    :catch_45
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error reading logcat output!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_54

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_54
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_58
    return-object v0

    :cond_59
    :try_start_59
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_62

    const-string v0, "You must add the android.permission.READ_LOGS permission to your manifest file!"

    goto :goto_58

    :cond_62
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, v1, v0

    if-gez v0, :cond_6b

    const/4 v0, 0x0

    :cond_6b
    move v1, v0

    :goto_6c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6c

    :cond_92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_95} :catch_45

    move-result-object v0

    goto :goto_58
.end method
