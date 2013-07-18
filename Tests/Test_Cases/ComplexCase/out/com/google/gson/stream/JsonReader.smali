.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[C


# instance fields
.field private final b:Lfh;

.field private final c:Ljava/io/Reader;

.field private d:Z

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[Lff;

.field private k:I

.field private l:Lcom/google/gson/stream/JsonToken;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/gson/stream/JsonReader;->a:[C

    .line 1315
    new-instance v0, Lfd;

    invoke-direct {v0}, Lfd;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 1331
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lfh;

    invoke-direct {v0}, Lfh;-><init>()V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->b:Lfh;

    .line 204
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    .line 212
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    .line 213
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 214
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    .line 219
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->h:I

    .line 220
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->i:I

    .line 225
    const/16 v0, 0x20

    new-array v0, v0, [Lff;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    .line 226
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 228
    sget-object v0, Lff;->f:Lff;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lff;)V

    .line 249
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    .line 255
    if-nez p1, :cond_35

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_35
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->c:Ljava/io/Reader;

    .line 259
    return-void
.end method

.method public static synthetic a(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/stream/JsonToken;
    .registers 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Lcom/google/gson/stream/JsonToken;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    return-object p1
.end method

.method private a(Z)Lcom/google/gson/stream/JsonToken;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 660
    if-eqz p1, :cond_1f

    .line 661
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lff;->b:Lff;

    aput-object v2, v0, v1

    .line 677
    :goto_d
    :sswitch_d
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    .line 692
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 693
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->d()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 664
    :cond_1f
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    .line 673
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 666
    :sswitch_2d
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 667
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_1e

    .line 669
    :sswitch_38
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    goto :goto_d

    .line 679
    :sswitch_3c
    if-eqz p1, :cond_49

    .line 680
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 681
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_1e

    .line 687
    :cond_49
    :sswitch_49
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 688
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 689
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 690
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_1e

    .line 677
    nop

    :sswitch_data_5c
    .sparse-switch
        0x2c -> :sswitch_49
        0x3b -> :sswitch_49
        0x5d -> :sswitch_3c
    .end sparse-switch

    .line 664
    :sswitch_data_6a
    .sparse-switch
        0x2c -> :sswitch_d
        0x3b -> :sswitch_38
        0x5d -> :sswitch_2d
    .end sparse-switch
.end method

.method private a([CII)Lcom/google/gson/stream/JsonToken;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 1258
    .line 1259
    aget-char v0, p1, p2

    .line 1261
    if-ne v0, v5, :cond_78

    .line 1262
    add-int/lit8 v1, p2, 0x1

    aget-char v0, p1, v1

    .line 1265
    :goto_e
    if-ne v0, v3, :cond_25

    .line 1266
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1276
    :cond_14
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_3b

    .line 1277
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1278
    :goto_1c
    if-lt v0, v3, :cond_3b

    if-gt v0, v4, :cond_3b

    .line 1279
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1c

    .line 1267
    :cond_25
    const/16 v2, 0x31

    if-lt v0, v2, :cond_38

    if-gt v0, v4, :cond_38

    .line 1268
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1269
    :goto_2f
    if-lt v0, v3, :cond_14

    if-gt v0, v4, :cond_14

    .line 1270
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_2f

    .line 1273
    :cond_38
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 1301
    :goto_3a
    return-object v0

    :cond_3b
    move v6, v0

    move v0, v1

    move v1, v6

    .line 1283
    const/16 v2, 0x65

    if-eq v1, v2, :cond_46

    const/16 v2, 0x45

    if-ne v1, v2, :cond_6e

    .line 1284
    :cond_46
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v1

    .line 1285
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_50

    if-ne v0, v5, :cond_54

    .line 1286
    :cond_50
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    .line 1288
    :cond_54
    if-lt v0, v3, :cond_6b

    if-gt v0, v4, :cond_6b

    .line 1289
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    move v6, v0

    move v0, v1

    move v1, v6

    .line 1290
    :goto_5f
    if-lt v1, v3, :cond_6e

    if-gt v1, v4, :cond_6e

    .line 1291
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v1

    move v6, v0

    move v0, v1

    move v1, v6

    goto :goto_5f

    .line 1294
    :cond_6b
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_3a

    .line 1298
    :cond_6e
    add-int v1, p2, p3

    if-ne v0, v1, :cond_75

    .line 1299
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    goto :goto_3a

    .line 1301
    :cond_75
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    goto :goto_3a

    :cond_78
    move v1, p2

    goto :goto_e
.end method

.method private a(C)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    .line 1006
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    .line 1007
    const/4 v0, 0x0

    .line 1009
    :cond_3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1010
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    move v4, v1

    .line 1013
    :goto_8
    if-ge v4, v2, :cond_5b

    .line 1014
    add-int/lit8 v3, v4, 0x1

    aget-char v4, v5, v4

    .line 1016
    if-ne v4, p1, :cond_32

    .line 1017
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1018
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    if-eqz v2, :cond_19

    .line 1019
    const-string v0, "skipped!"

    .line 1024
    :goto_18
    return-object v0

    .line 1020
    :cond_19
    if-nez v0, :cond_26

    .line 1021
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->b:Lfh;

    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Lfh;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1023
    :cond_26
    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 1027
    :cond_32
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_77

    .line 1028
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1029
    if-nez v0, :cond_3f

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    :cond_3f
    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1033
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->i()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1034
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1035
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    move-object v3, v0

    move v0, v1

    move v7, v1

    move v1, v2

    move v2, v7

    :goto_56
    move v4, v2

    move v2, v1

    move v1, v0

    move-object v0, v3

    .line 1038
    goto :goto_8

    .line 1040
    :cond_5b
    if-nez v0, :cond_62

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    :cond_62
    sub-int v2, v4, v1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1044
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1045
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1046
    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_77
    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    goto :goto_56
.end method

.method public static synthetic a(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 4

    .prologue
    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    .line 406
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 408
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-le v0, v1, :cond_1e

    sget-object v0, Lcom/google/gson/stream/JsonReader;->a:[C

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 420
    :cond_1d
    :goto_1d
    return-void

    .line 412
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sget-object v1, Lcom/google/gson/stream/JsonReader;->a:[C

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 413
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/gson/stream/JsonReader;->a:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_1d

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 419
    :cond_34
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    sget-object v1, Lcom/google/gson/stream/JsonReader;->a:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    goto :goto_1d
.end method

.method private a(Lcom/google/gson/stream/JsonToken;)V
    .registers 5
    .parameter

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 338
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    if-eq v0, p1, :cond_4a

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_4a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 343
    return-void
.end method

.method private a(Lff;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 650
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    array-length v1, v1

    if-ne v0, v1, :cond_17

    .line 651
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lff;

    .line 652
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->k:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    .line 655
    :cond_17
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->k:I

    aput-object p1, v0, v1

    .line 656
    return-void
.end method

.method private a(I)Z
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 799
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    .line 803
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->h:I

    .line 804
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->i:I

    .line 805
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->f:I

    move v4, v3

    :goto_b
    if-ge v4, v6, :cond_1d

    .line 806
    aget-char v7, v5, v4

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1a

    .line 807
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 805
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 810
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 813
    :cond_1d
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->h:I

    .line 814
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->i:I

    .line 816
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    if-eq v0, v2, :cond_6f

    .line 817
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    .line 818
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    invoke-static {v5, v0, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    :goto_35
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 825
    :cond_37
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->c:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    array-length v4, v5

    iget v6, p0, Lcom/google/gson/stream/JsonReader;->g:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v5, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_72

    .line 826
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    .line 829
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->h:I

    if-ne v0, v1, :cond_6a

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->i:I

    if-ne v0, v1, :cond_6a

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-lez v0, :cond_6a

    aget-char v0, v5, v3

    const v2, 0xfeff

    if-ne v0, v2, :cond_6a

    .line 830
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 831
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->i:I

    .line 834
    :cond_6a
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-lt v0, p1, :cond_37

    .line 838
    :goto_6e
    return v1

    .line 820
    :cond_6f
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->g:I

    goto :goto_35

    :cond_72
    move v1, v3

    .line 838
    goto :goto_6e
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 983
    :goto_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-le v0, v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_16
    move v0, v1

    .line 984
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 985
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_31

    .line 983
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    goto :goto_1

    .line 984
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 989
    :cond_34
    const/4 v1, 0x1

    .line 991
    :cond_35
    return v1
.end method

.method public static synthetic b(Lcom/google/gson/stream/JsonReader;)I
    .registers 2
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v0

    return v0
.end method

.method private b()Lcom/google/gson/stream/JsonToken;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 428
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 429
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 430
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 431
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    .line 432
    return-object v0
.end method

.method private b(Z)Lcom/google/gson/stream/JsonToken;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 704
    if-eqz p1, :cond_41

    .line 706
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_74

    .line 711
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 727
    :sswitch_10
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    .line 728
    sparse-switch v0, :sswitch_data_7a

    .line 735
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 736
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->d(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_64

    .line 739
    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 708
    :pswitch_36
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 709
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 744
    :goto_40
    return-object v0

    .line 714
    :cond_41
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_84

    .line 722
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 716
    :sswitch_4f
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 717
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_40

    .line 730
    :sswitch_5a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 732
    :sswitch_5d
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    .line 743
    :cond_64
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lff;->d:Lff;

    aput-object v2, v0, v1

    .line 744
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_40

    .line 706
    nop

    :pswitch_data_74
    .packed-switch 0x7d
        :pswitch_36
    .end packed-switch

    .line 728
    :sswitch_data_7a
    .sparse-switch
        0x22 -> :sswitch_5d
        0x27 -> :sswitch_5a
    .end sparse-switch

    .line 714
    :sswitch_data_84
    .sparse-switch
        0x2c -> :sswitch_10
        0x3b -> :sswitch_10
        0x7d -> :sswitch_4f
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .parameter

    .prologue
    .line 1310
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic b(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/google/gson/stream/JsonReader;)I
    .registers 2
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v0

    return v0
.end method

.method private c(Z)I
    .registers 6
    .parameter

    .prologue
    .line 878
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    .line 879
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 880
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    .line 882
    :goto_6
    if-ne v1, v0, :cond_42

    .line 883
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 884
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 953
    if-eqz p1, :cond_ae

    .line 954
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of input at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_3e
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 888
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    .line 891
    :cond_42
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    .line 892
    sparse-switch v1, :sswitch_data_b0

    .line 949
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    move v0, v1

    .line 957
    :goto_4c
    return v0

    :sswitch_4d
    move v1, v2

    .line 897
    goto :goto_6

    .line 900
    :sswitch_4f
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 901
    if-ne v2, v0, :cond_68

    .line 902
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 903
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    .line 904
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 905
    if-nez v0, :cond_68

    move v0, v1

    .line 906
    goto :goto_4c

    .line 910
    :cond_68
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 911
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    aget-char v0, v3, v0

    .line 912
    sparse-switch v0, :sswitch_data_ca

    move v0, v1

    .line 932
    goto :goto_4c

    .line 915
    :sswitch_74
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 916
    const-string v0, "*/"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 917
    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 919
    :cond_89
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v1, v0, 0x2

    .line 920
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    goto/16 :goto_6

    .line 925
    :sswitch_91
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 926
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->h()V

    .line 927
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 928
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    goto/16 :goto_6

    .line 936
    :sswitch_a0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 942
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 943
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->h()V

    .line 944
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 945
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->g:I

    goto/16 :goto_6

    .line 957
    :cond_ae
    const/4 v0, -0x1

    goto :goto_4c

    .line 892
    :sswitch_data_b0
    .sparse-switch
        0x9 -> :sswitch_4d
        0xa -> :sswitch_4d
        0xd -> :sswitch_4d
        0x20 -> :sswitch_4d
        0x23 -> :sswitch_a0
        0x2f -> :sswitch_4f
    .end sparse-switch

    .line 912
    :sswitch_data_ca
    .sparse-switch
        0x2a -> :sswitch_74
        0x2f -> :sswitch_91
    .end sparse-switch
.end method

.method private c()Lcom/google/gson/stream/JsonToken;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 752
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 762
    :pswitch_8
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 756
    :pswitch_f
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 757
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-lt v0, v1, :cond_1e

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2e

    .line 758
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 765
    :cond_2e
    :pswitch_2e
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lff;->e:Lff;

    aput-object v2, v0, v1

    .line 766
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->d()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    return-object v0

    .line 752
    nop

    :pswitch_data_3e
    .packed-switch 0x3a
        :pswitch_2e
        :pswitch_8
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method private d()Lcom/google/gson/stream/JsonToken;
    .registers 2

    .prologue
    .line 771
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    .line 772
    sparse-switch v0, :sswitch_data_36

    .line 788
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 789
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->j()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    :goto_12
    return-object v0

    .line 774
    :sswitch_13
    sget-object v0, Lff;->c:Lff;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lff;)V

    .line 775
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_12

    .line 778
    :sswitch_1d
    sget-object v0, Lff;->a:Lff;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lff;)V

    .line 779
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_12

    .line 782
    :sswitch_27
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 784
    :sswitch_2a
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 785
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    goto :goto_12

    .line 772
    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_2a
        0x27 -> :sswitch_27
        0x5b -> :sswitch_1d
        0x7b -> :sswitch_13
    .end sparse-switch
.end method

.method public static synthetic d(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    return-object v0
.end method

.method private d(Z)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1061
    .line 1062
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->o:I

    .line 1063
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->p:I

    move v1, v2

    move-object v0, v3

    .line 1068
    :cond_9
    :goto_9
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-ge v4, v5, :cond_33

    .line 1069
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_8a

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1075
    :sswitch_1d
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 1119
    :goto_20
    :sswitch_20
    if-eqz p1, :cond_68

    if-nez v0, :cond_68

    .line 1120
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->o:I

    .line 1130
    :goto_28
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    .line 1131
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1132
    return-object v3

    .line 1096
    :cond_33
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    array-length v4, v4

    if-ge v1, v4, :cond_47

    .line 1097
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1100
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->g:I

    aput-char v2, v4, v5

    goto :goto_20

    .line 1106
    :cond_47
    if-nez v0, :cond_4e

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    :cond_4e
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->f:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1110
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->p:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->p:I

    .line 1111
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 1113
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_88

    move v1, v2

    .line 1114
    goto :goto_20

    .line 1122
    :cond_68
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    if-eqz v2, :cond_6f

    .line 1123
    const-string v3, "skipped!"

    goto :goto_28

    .line 1124
    :cond_6f
    if-nez v0, :cond_7c

    .line 1125
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->b:Lfh;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    invoke-virtual {v0, v2, v3, v1}, Lfh;->a([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 1127
    :cond_7c
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->f:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    :cond_88
    move v1, v2

    goto :goto_9

    .line 1069
    :sswitch_data_8a
    .sparse-switch
        0x9 -> :sswitch_20
        0xa -> :sswitch_20
        0xc -> :sswitch_20
        0xd -> :sswitch_20
        0x20 -> :sswitch_20
        0x23 -> :sswitch_1d
        0x2c -> :sswitch_20
        0x2f -> :sswitch_1d
        0x3a -> :sswitch_20
        0x3b -> :sswitch_1d
        0x3d -> :sswitch_1d
        0x5b -> :sswitch_20
        0x5c -> :sswitch_1d
        0x5d -> :sswitch_20
        0x7b -> :sswitch_20
        0x7d -> :sswitch_20
    .end sparse-switch
.end method

.method private e()I
    .registers 5

    .prologue
    .line 842
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->h:I

    .line 843
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    if-ge v0, v2, :cond_14

    .line 844
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 845
    add-int/lit8 v1, v1, 0x1

    .line 843
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 848
    :cond_14
    return v1
.end method

.method private f()I
    .registers 5

    .prologue
    .line 852
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->i:I

    .line 853
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    if-ge v0, v2, :cond_16

    .line 854
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    .line 855
    const/4 v1, 0x1

    .line 853
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 857
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 860
    :cond_16
    return v1
.end method

.method private g()V
    .registers 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    if-nez v0, :cond_b

    .line 963
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 965
    :cond_b
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 973
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 974
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    aget-char v0, v0, v1

    .line 975
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 979
    :cond_1f
    return-void
.end method

.method private i()C
    .registers 8

    .prologue
    const/4 v5, 0x4

    .line 1150
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1151
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1154
    :cond_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->f:I

    aget-char v0, v0, v1

    .line 1155
    sparse-switch v0, :sswitch_data_b4

    .line 1197
    :goto_22
    return v0

    .line 1157
    :sswitch_23
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->g:I

    if-le v0, v1, :cond_38

    invoke-direct {p0, v5}, Lcom/google/gson/stream/JsonReader;->a(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 1158
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1161
    :cond_38
    const/4 v1, 0x0

    .line 1162
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_40
    if-ge v1, v2, :cond_99

    .line 1163
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    aget-char v3, v3, v1

    .line 1164
    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    .line 1165
    const/16 v4, 0x30

    if-lt v3, v4, :cond_58

    const/16 v4, 0x39

    if-gt v3, v4, :cond_58

    .line 1166
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    .line 1162
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1167
    :cond_58
    const/16 v4, 0x61

    if-lt v3, v4, :cond_67

    const/16 v4, 0x66

    if-gt v3, v4, :cond_67

    .line 1168
    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    .line 1169
    :cond_67
    const/16 v4, 0x41

    if-lt v3, v4, :cond_76

    const/16 v4, 0x46

    if-gt v3, v4, :cond_76

    .line 1170
    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_55

    .line 1172
    :cond_76
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->b:Lfh;

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->f:I

    invoke-virtual {v2, v3, v4, v5}, Lfh;->a([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_99
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->f:I

    goto :goto_22

    .line 1179
    :sswitch_a0
    const/16 v0, 0x9

    goto :goto_22

    .line 1182
    :sswitch_a3
    const/16 v0, 0x8

    goto/16 :goto_22

    .line 1185
    :sswitch_a7
    const/16 v0, 0xa

    goto/16 :goto_22

    .line 1188
    :sswitch_ab
    const/16 v0, 0xd

    goto/16 :goto_22

    .line 1191
    :sswitch_af
    const/16 v0, 0xc

    goto/16 :goto_22

    .line 1155
    nop

    :sswitch_data_b4
    .sparse-switch
        0x62 -> :sswitch_a3
        0x66 -> :sswitch_af
        0x6e -> :sswitch_a7
        0x72 -> :sswitch_ab
        0x74 -> :sswitch_a0
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private j()Lcom/google/gson/stream/JsonToken;
    .registers 3

    .prologue
    .line 1205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->d(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 1206
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    if-nez v0, :cond_12

    .line 1207
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1209
    :cond_12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->k()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 1210
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_21

    .line 1211
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->g()V

    .line 1213
    :cond_21
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    return-object v0
.end method

.method private k()Lcom/google/gson/stream/JsonToken;
    .registers 9

    .prologue
    const/16 v7, 0x55

    const/16 v6, 0x45

    const/4 v5, 0x4

    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1220
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1222
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 1247
    :goto_10
    return-object v0

    .line 1223
    :cond_11
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    if-ne v0, v5, :cond_6e

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_29

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6e

    :cond_29
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3f

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_6e

    :cond_3f
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_53

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    :cond_53
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_67

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6e

    .line 1228
    :cond_67
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 1229
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    goto :goto_10

    .line 1230
    :cond_6e
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    if-ne v0, v5, :cond_d2

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_86

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d2

    :cond_86
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9e

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_d2

    :cond_9e
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b4

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v7, v0, :cond_d2

    :cond_b4
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_ca

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_d2

    .line 1235
    :cond_ca
    const-string v0, "true"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 1236
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto/16 :goto_10

    .line 1237
    :cond_d2
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14d

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_eb

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_eb
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_103

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_103
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_117

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_14d

    :cond_117
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_12f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_14d

    :cond_12f
    const/16 v0, 0x65

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_145

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_14d

    .line 1243
    :cond_145
    const-string v0, "false"

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 1244
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    goto/16 :goto_10

    .line 1246
    :cond_14d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->b:Lfh;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->o:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->p:I

    invoke-virtual {v0, v1, v2, v3}, Lfh;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 1247
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->e:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->o:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->p:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonReader;->a([CII)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_10
.end method


# virtual methods
.method public beginArray()V
    .registers 2

    .prologue
    .line 306
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 307
    return-void
.end method

.method public beginObject()V
    .registers 2

    .prologue
    .line 322
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 323
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 620
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 621
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 622
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    const/4 v1, 0x0

    sget-object v2, Lff;->h:Lff;

    aput-object v2, v0, v1

    .line 623
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->k:I

    .line 624
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->c:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 625
    return-void
.end method

.method public endArray()V
    .registers 2

    .prologue
    .line 314
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 315
    return-void
.end method

.method public endObject()V
    .registers 2

    .prologue
    .line 330
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->a(Lcom/google/gson/stream/JsonToken;)V

    .line 331
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 350
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final isLenient()Z
    .registers 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 4

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 482
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_40

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_40
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_4b

    const/4 v0, 0x1

    .line 488
    :goto_47
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 489
    return v0

    .line 487
    :cond_4b
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public nextDouble()D
    .registers 5

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 520
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_46
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 527
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_93

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 528
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids octal prefixes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_93
    iget-boolean v2, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    if-nez v2, :cond_da

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_a3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 532
    :cond_a3
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_da
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 537
    return-wide v0
.end method

.method public nextInt()I
    .registers 6

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 590
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    .line 591
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4b} :catch_94

    move-result v0

    .line 607
    :cond_4c
    int-to-long v1, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d8

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 608
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids octal prefixes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :catch_94
    move-exception v0

    .line 599
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 600
    double-to-int v0, v1

    .line 601
    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_4c

    .line 602
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_d8
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 613
    return v0
.end method

.method public nextLong()J
    .registers 7

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 552
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_46

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4b} :catch_93

    move-result-wide v0

    .line 569
    :cond_4c
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d7

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 570
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids octal prefixes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :catch_93
    move-exception v0

    .line 561
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 562
    double-to-long v0, v2

    .line 563
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_4c

    .line 564
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_d7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 575
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 444
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_42

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_42
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->m:Ljava/lang/String;

    .line 449
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 450
    return-object v0
.end method

.method public nextNull()V
    .registers 4

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 501
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_40

    .line 502
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_40
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 507
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 463
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_48

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_48
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->n:Ljava/lang/String;

    .line 469
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    .line 470
    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    if-eqz v0, :cond_9

    .line 358
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    .line 392
    :cond_8
    :goto_8
    return-object v0

    .line 361
    :cond_9
    sget-object v0, Lfe;->a:[I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lff;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c4

    .line 396
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 363
    :pswitch_22
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    if-eqz v0, :cond_29

    .line 364
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->a()V

    .line 366
    :cond_29
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->j:[Lff;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lff;->g:Lff;

    aput-object v2, v0, v1

    .line 367
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->d()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 368
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_8

    .line 369
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->l:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :pswitch_7e
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->a(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_8

    .line 376
    :pswitch_83
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->a(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_8

    .line 378
    :pswitch_88
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->b(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_8

    .line 380
    :pswitch_8e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->c()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_8

    .line 382
    :pswitch_94
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->b(Z)Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_8

    .line 384
    :pswitch_9a
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->c(Z)I

    move-result v0

    .line 385
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a5

    .line 386
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    goto/16 :goto_8

    .line 388
    :cond_a5
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->f:I

    .line 389
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    if-nez v0, :cond_b6

    .line 390
    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->b(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 392
    :cond_b6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->d()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    goto/16 :goto_8

    .line 394
    :pswitch_bc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_22
        :pswitch_7e
        :pswitch_83
        :pswitch_88
        :pswitch_8e
        :pswitch_94
        :pswitch_9a
        :pswitch_bc
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->d:Z

    .line 292
    return-void
.end method

.method public skipValue()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    move v0, v1

    .line 637
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->b()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 638
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_11

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    if-ne v2, v3, :cond_18

    .line 639
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 643
    :cond_13
    :goto_13
    if-nez v0, :cond_5

    .line 645
    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    .line 647
    return-void

    .line 640
    :cond_18
    :try_start_18
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_20

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_23

    if-ne v2, v3, :cond_13

    .line 641
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 645
    :catchall_23
    move-exception v0

    iput-boolean v1, p0, Lcom/google/gson/stream/JsonReader;->q:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
