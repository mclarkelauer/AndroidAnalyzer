.class public Lbiz/source_code/base64Coder/Base64Coder;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[C

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbiz/source_code/base64Coder/Base64Coder;->a:Ljava/lang/String;

    new-array v0, v5, [C

    sput-object v0, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_12
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_21

    sget-object v4, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_12

    :cond_21
    const/16 v0, 0x61

    :goto_23
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_32

    sget-object v4, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_23

    :cond_32
    const/16 v0, 0x30

    :goto_34
    const/16 v3, 0x39

    if-gt v0, v3, :cond_43

    sget-object v4, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_34

    :cond_43
    sget-object v0, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    move v0, v1

    :goto_5a
    sget-object v2, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    array-length v2, v2

    if-ge v0, v2, :cond_67

    sget-object v2, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_67
    :goto_67
    if-ge v1, v5, :cond_75

    sget-object v0, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    sget-object v2, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_75
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lbiz/source_code/base64Coder/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lbiz/source_code/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .registers 15

    const/16 v2, 0x41

    const/16 v11, 0x7f

    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_10
    if-lez p2, :cond_1f

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1f

    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    :cond_1f
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v6, v0, 0x4

    new-array v7, v6, [B

    add-int v8, p1, p2

    const/4 v0, 0x0

    move v5, v0

    :goto_29
    if-ge p1, v8, :cond_9e

    add-int/lit8 v1, p1, 0x1

    aget-char v9, p0, p1

    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    if-ge v0, v8, :cond_52

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    :goto_3b
    if-ge v0, v8, :cond_54

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    :goto_42
    if-gt v9, v11, :cond_4a

    if-gt v10, v11, :cond_4a

    if-gt v4, v11, :cond_4a

    if-le v0, v11, :cond_57

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    move v4, v2

    goto :goto_3b

    :cond_54
    move v3, v0

    move v0, v2

    goto :goto_42

    :cond_57
    sget-object v1, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    aget-byte v1, v1, v9

    sget-object v9, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    aget-byte v9, v9, v10

    sget-object v10, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    aget-byte v4, v10, v4

    sget-object v10, Lbiz/source_code/base64Coder/Base64Coder;->c:[B

    aget-byte v0, v10, v0

    if-ltz v1, :cond_6f

    if-ltz v9, :cond_6f

    if-ltz v4, :cond_6f

    if-gez v0, :cond_77

    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    if-ge v0, v6, :cond_a1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v7, v0

    :goto_94
    if-ge v1, v6, :cond_9f

    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v7, v1

    :goto_9b
    move v5, v0

    move p1, v3

    goto :goto_29

    :cond_9e
    return-object v7

    :cond_9f
    move v0, v1

    goto :goto_9b

    :cond_a1
    move v1, v0

    goto :goto_94
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v3, 0x20

    if-eq v5, v3, :cond_28

    const/16 v3, 0xd

    if-eq v5, v3, :cond_28

    const/16 v3, 0xa

    if-eq v5, v3, :cond_28

    const/16 v3, 0x9

    if-eq v5, v3, :cond_28

    add-int/lit8 v3, v2, 0x1

    aput-char v5, v4, v2

    move v2, v3

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    invoke-static {v4, v1, v2}, Lbiz/source_code/base64Coder/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lbiz/source_code/base64Coder/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lbiz/source_code/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lbiz/source_code/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .registers 16

    const/16 v3, 0x3d

    const/4 v1, 0x0

    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [C

    add-int v8, p1, p2

    move v5, v1

    :goto_14
    if-ge p1, v8, :cond_70

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    and-int/lit16 v9, v2, 0xff

    if-ge v0, v8, :cond_67

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    :goto_26
    if-ge v0, v8, :cond_69

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_2e
    ushr-int/lit8 v10, v9, 0x2

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v9, v11

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v11, v0, 0x6

    or-int/2addr v4, v11

    and-int/lit8 v11, v0, 0x3f

    add-int/lit8 v0, v5, 0x1

    sget-object v12, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    aget-char v10, v12, v10

    aput-char v10, v7, v5

    add-int/lit8 v5, v0, 0x1

    sget-object v10, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    aget-char v9, v10, v9

    aput-char v9, v7, v0

    if-ge v5, v6, :cond_6c

    sget-object v0, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    aget-char v0, v0, v4

    :goto_56
    aput-char v0, v7, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v6, :cond_6e

    sget-object v0, Lbiz/source_code/base64Coder/Base64Coder;->b:[C

    aget-char v0, v0, v11

    :goto_60
    aput-char v0, v7, v4

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    move p1, v2

    goto :goto_14

    :cond_67
    move v4, v1

    goto :goto_26

    :cond_69
    move v2, v0

    move v0, v1

    goto :goto_2e

    :cond_6c
    move v0, v3

    goto :goto_56

    :cond_6e
    move v0, v3

    goto :goto_60

    :cond_70
    return-object v7
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    sget-object v3, Lbiz/source_code/base64Coder/Base64Coder;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lbiz/source_code/base64Coder/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .registers 10

    mul-int/lit8 v0, p3, 0x3

    div-int/lit8 v1, v0, 0x4

    if-gtz v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    add-int v0, p2, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p2, :cond_39

    sub-int v3, p2, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p1, v0

    invoke-static {p0, v4, v3}, Lbiz/source_code/base64Coder/Base64Coder;->encode([BII)[C

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v3

    goto :goto_23

    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lbiz/source_code/base64Coder/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
