.class public Lcom/pad/android/util/AdEncryption;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY:Ljava/lang/String; = "ciF6e+7Fd^21sd|0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64encode([B)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 281
    const-string v0, ""

    .line 284
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v2, v2, 0x3

    rem-int/lit8 v4, v2, 0x3

    .line 286
    array-length v2, p0

    add-int/2addr v2, v4

    invoke-static {v2, p0}, Lcom/pad/android/util/AdEncryption;->zeroPad(I[B)[B

    move-result-object v5

    move-object v2, v0

    move v0, v1

    .line 289
    :goto_14
    array-length v6, v5

    if-lt v0, v6, :cond_38

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=="

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_38
    aget-byte v6, v5, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 292
    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    .line 291
    add-int/2addr v6, v7

    .line 293
    add-int/lit8 v7, v0, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    .line 291
    add-int/2addr v6, v7

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v2, v6, 0x12

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    add-int/lit8 v0, v0, 0x3

    goto :goto_14
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 169
    const-string v1, ""

    .line 170
    const/4 v0, 0x0

    :goto_3
    array-length v2, p0

    if-lt v0, v2, :cond_7

    .line 174
    return-object v1

    .line 172
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x200

    const/4 v2, 0x0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    .line 28
    rem-int/lit8 v1, v7, 0x10

    if-eqz v1, :cond_37

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v0, v7, 0x10

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {v2, v0}, Lcom/pad/android/util/AdEncryption;->repeat(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_37
    invoke-static {}, Lcom/pad/android/util/AdEncryption;->getRndIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 36
    const-string v1, "ciF6e+7Fd^21sd|0"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v4}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v3

    .line 37
    array-length v1, v3

    if-le v1, v11, :cond_e3

    .line 39
    new-array v1, v11, [B

    move v5, v2

    .line 40
    :goto_4f
    if-lt v5, v11, :cond_63

    move-object v3, v4

    move v6, v2

    move-object v4, v1

    .line 47
    :goto_54
    if-lt v6, v7, :cond_6a

    .line 105
    invoke-static {v3}, Lcom/pad/android/util/AdEncryption;->base64encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+/="

    const-string v2, "-_~"

    invoke-static {v0, v1, v2}, Lcom/pad/android/util/AdEncryption;->replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_63
    aget-byte v6, v3, v5

    aput-byte v6, v1, v5

    .line 40
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 51
    :cond_6a
    invoke-static {v4}, Lcom/pad/android/util/AdEncryption;->sha1([B)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/pad/android/util/AdEncryption;->pack(Ljava/lang/String;)[B

    move-result-object v5

    .line 54
    const-string v1, ""

    .line 57
    add-int/lit8 v1, v6, 0x10

    :try_start_76
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_b4

    move-result-object v1

    .line 64
    :goto_7a
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v8

    .line 69
    array-length v1, v3

    array-length v5, v8

    add-int/2addr v1, v5

    new-array v5, v1, [B

    move v1, v2

    .line 70
    :goto_88
    array-length v9, v3

    if-lt v1, v9, :cond_ba

    move v1, v2

    .line 74
    :goto_8c
    array-length v9, v8

    if-lt v1, v9, :cond_c1

    .line 82
    array-length v1, v8

    array-length v3, v4

    add-int/2addr v1, v3

    new-array v3, v1, [B

    move v1, v2

    .line 83
    :goto_95
    array-length v9, v8

    if-lt v1, v9, :cond_ca

    move v1, v2

    .line 87
    :goto_99
    array-length v9, v4

    if-lt v1, v9, :cond_d1

    .line 91
    array-length v1, v3

    if-le v1, v11, :cond_e1

    .line 93
    new-array v1, v11, [B

    move v4, v2

    .line 94
    :goto_a2
    if-lt v4, v11, :cond_da

    .line 100
    :goto_a4
    const-string v3, "ciF6e+7Fd^21sd|0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/pad/android/util/AdEncryption;->xor([B[B)[B

    move-result-object v1

    .line 101
    add-int/lit8 v3, v6, 0x10

    move-object v4, v1

    move v6, v3

    move-object v3, v5

    goto :goto_54

    .line 59
    :catch_b4
    move-exception v1

    .line 61
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7a

    .line 72
    :cond_ba
    aget-byte v9, v3, v1

    aput-byte v9, v5, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 76
    :cond_c1
    array-length v9, v3

    add-int/2addr v9, v1

    aget-byte v10, v8, v1

    aput-byte v10, v5, v9

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 85
    :cond_ca
    aget-byte v9, v8, v1

    aput-byte v9, v3, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 89
    :cond_d1
    array-length v9, v8

    add-int/2addr v9, v1

    aget-byte v10, v4, v1

    aput-byte v10, v3, v9

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 96
    :cond_da
    aget-byte v8, v3, v4

    aput-byte v8, v1, v4

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_a2

    :cond_e1
    move-object v1, v3

    goto :goto_a4

    :cond_e3
    move v6, v2

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto/16 :goto_54
.end method

.method private static getRndIv()Ljava/lang/String;
    .registers 8

    .prologue
    .line 122
    const-string v3, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 123
    const/16 v1, 0x10

    .line 124
    const-string v0, ""

    .line 125
    :goto_6
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_b

    .line 131
    return-object v0

    .line 127
    :cond_b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 128
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_6
.end method

.method private static pack(Ljava/lang/String;)[B
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [B

    move-object v2, v0

    move v0, v1

    .line 201
    :goto_a
    int-to-double v3, v0

    div-int/lit8 v6, v5, 0x2

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    cmpg-double v3, v3, v6

    if-ltz v3, :cond_17

    .line 228
    return-object v2

    .line 203
    :cond_17
    const-string v3, ""

    .line 206
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    :try_start_1f
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_2f

    move-result-object v3

    .line 212
    :goto_23
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v6, v3

    .line 215
    :try_start_2a
    aput-byte v6, v2, v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2c} :catch_4e

    .line 201
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 208
    :catch_2f
    move-exception v3

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v0, 0x2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    .line 217
    :catch_4e
    move-exception v3

    .line 219
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [B

    move v3, v1

    .line 220
    :goto_55
    array-length v7, v2

    if-lt v3, v7, :cond_5f

    .line 224
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aput-byte v6, v4, v2

    move-object v2, v4

    .line 225
    goto :goto_2c

    .line 222
    :cond_5f
    aget-byte v7, v2, v3

    aput-byte v7, v4, v3

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_55
.end method

.method private static repeat(CI)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const/4 v0, 0x0

    :goto_6
    if-lt v0, p1, :cond_d

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 268
    :cond_11
    :goto_11
    return-object p0

    .line 238
    :cond_12
    if-nez p2, :cond_16

    .line 240
    const-string p2, ""

    .line 243
    :cond_16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 245
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v0

    .line 246
    :goto_24
    if-lt v1, v3, :cond_2d

    .line 263
    if-eqz v0, :cond_11

    .line 265
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 248
    :cond_2d
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 249
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 250
    if-ltz v6, :cond_44

    .line 252
    const/4 v0, 0x1

    .line 253
    if-ge v6, v2, :cond_41

    .line 255
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    :cond_41
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 260
    :cond_44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_41
.end method

.method private static sha1([B)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    const-string v1, ""

    .line 152
    :try_start_3
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_8} :catch_16

    move-result-object v0

    .line 157
    :goto_9
    :try_start_9
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/pad/android/util/AdEncryption;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_12

    move-result-object v0

    .line 163
    :goto_11
    return-object v0

    .line 159
    :catch_12
    move-exception v0

    .line 161
    const-string v0, ""

    goto :goto_11

    .line 154
    :catch_16
    move-exception v1

    goto :goto_9
.end method

.method private static xor([B[B)[B
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 111
    array-length v0, p0

    new-array v1, v0, [B

    .line 112
    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-lt v0, v2, :cond_8

    .line 116
    return-object v1

    .line 114
    :cond_8
    aget-byte v2, p0, v0

    array-length v3, p1

    rem-int v3, v0, v3

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static zeroPad(I[B)[B
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 273
    new-array v0, p0, [B

    .line 274
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    return-object v0
.end method
