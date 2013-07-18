.class public Lcom/tndev/common/utils/CryptoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 195
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    return-void
.end method

.method private static a([B)[B
    .registers 4
    .parameter

    .prologue
    .line 111
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 112
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 114
    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 115
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 117
    return-object v0
.end method

.method private static a([B[B)[B
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 128
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 130
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 131
    return-object v0
.end method

.method private static b([B[B)[B
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 142
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 143
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 144
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public static compress(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 30
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 35
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 37
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    .line 40
    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 42
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    .line 41
    invoke-static {v0, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    invoke-static {v2, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    return-object v1
.end method

.method public static decompress(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 53
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 54
    array-length v2, v1

    if-le v2, v6, :cond_3a

    .line 56
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 57
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 58
    array-length v4, v1

    add-int/lit8 v4, v4, -0x4

    .line 57
    invoke-direct {v3, v1, v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 56
    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    :cond_1c
    :goto_1c
    if-ne v0, v5, :cond_30

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 68
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    :goto_2f
    return-object v0

    .line 62
    :cond_30
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v0

    .line 63
    if-eq v0, v5, :cond_1c

    .line 64
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1c

    .line 74
    :cond_3a
    const-string v0, ""

    goto :goto_2f
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/CryptoUtils;->a([B)[B

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/tndev/common/utils/CryptoUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/tndev/common/utils/CryptoUtils;->b([B[B)[B

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/CryptoUtils;->a([B)[B

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tndev/common/utils/CryptoUtils;->a([B[B)[B

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/tndev/common/utils/CryptoUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 162
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/tndev/common/utils/CryptoUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 171
    new-array v2, v1, [B

    .line 172
    const/4 v0, 0x0

    :goto_9
    if-lt v0, v1, :cond_c

    .line 175
    return-object v2

    .line 173
    :cond_c
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 174
    const/16 v4, 0x10

    .line 173
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 173
    aput-byte v3, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/CryptoUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 183
    if-nez p0, :cond_5

    .line 184
    const-string v0, ""

    .line 189
    :goto_4
    return-object v0

    .line 185
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 186
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-lt v0, v2, :cond_16

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 187
    :cond_16
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/tndev/common/utils/CryptoUtils;->a(Ljava/lang/StringBuffer;B)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
