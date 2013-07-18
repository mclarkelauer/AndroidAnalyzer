.class public final Lcom/google/gson/internal/StringMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final b:[Ljava/util/Map$Entry;

.field private static final i:I


# instance fields
.field private a:Lda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda",
            "<TV;>;"
        }
    .end annotation
.end field

.field private c:[Lda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda",
            "<TV;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lda;

    sput-object v0, Lcom/google/gson/internal/StringMap;->b:[Ljava/util/Map$Entry;

    .line 485
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/google/gson/internal/StringMap;->i:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 92
    sget-object v0, Lcom/google/gson/internal/StringMap;->b:[Ljava/util/Map$Entry;

    check-cast v0, [Lda;

    check-cast v0, [Lda;

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->e:I

    .line 94
    new-instance v0, Lda;

    invoke-direct {v0}, Lda;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->a:Lda;

    .line 95
    return-void
.end method

.method public static synthetic a(Lcom/google/gson/internal/StringMap;)Lda;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->a:Lda;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lda;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lda",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_4

    .line 127
    :cond_3
    :goto_3
    return-object v0

    .line 119
    :cond_4
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->b(Ljava/lang/String;)I

    move-result v2

    .line 120
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 121
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v1, v1, v3

    :goto_10
    if-eqz v1, :cond_3

    .line 122
    iget-object v3, v1, Lda;->a:Ljava/lang/String;

    .line 123
    if-eq v3, p1, :cond_20

    iget v4, v1, Lda;->c:I

    if-ne v4, v2, :cond_22

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_20
    move-object v0, v1

    .line 124
    goto :goto_3

    .line 121
    :cond_22
    iget-object v1, v1, Lda;->d:Lda;

    goto :goto_10
.end method

.method private a(Lda;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p1, Lda;->f:Lda;

    iget-object v1, p1, Lda;->e:Lda;

    iput-object v1, v0, Lda;->e:Lda;

    .line 251
    iget-object v0, p1, Lda;->e:Lda;

    iget-object v1, p1, Lda;->f:Lda;

    iput-object v1, v0, Lda;->f:Lda;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p1, Lda;->f:Lda;

    iput-object v0, p1, Lda;->e:Lda;

    .line 253
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;II)V"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v5, p0, Lcom/google/gson/internal/StringMap;->a:Lda;

    .line 159
    iget-object v6, v5, Lda;->f:Lda;

    .line 160
    new-instance v0, Lda;

    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    aget-object v4, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lda;-><init>(Ljava/lang/String;Ljava/lang/Object;ILda;Lda;Lda;)V

    .line 162
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    iput-object v0, v5, Lda;->f:Lda;

    iput-object v0, v6, Lda;->e:Lda;

    aput-object v0, v1, p4

    .line 163
    return-void
.end method

.method public static synthetic a(Lcom/google/gson/internal/StringMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 349
    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_7
    move v0, v1

    .line 371
    :goto_8
    return v0

    :cond_9
    move-object v0, p1

    .line 353
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->b(Ljava/lang/String;)I

    move-result v3

    .line 354
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 355
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    .line 356
    aget-object v2, v4, v5

    const/4 v0, 0x0

    :goto_1a
    if-eqz v2, :cond_54

    .line 357
    iget v6, v2, Lda;->c:I

    if-ne v6, v3, :cond_4e

    iget-object v6, v2, Lda;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 358
    if-nez p2, :cond_30

    iget-object v3, v2, Lda;->b:Ljava/lang/Object;

    if-eqz v3, :cond_38

    :cond_2e
    move v0, v1

    .line 359
    goto :goto_8

    .line 358
    :cond_30
    iget-object v3, v2, Lda;->b:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 361
    :cond_38
    if-nez v0, :cond_49

    .line 362
    iget-object v0, v2, Lda;->d:Lda;

    aput-object v0, v4, v5

    .line 366
    :goto_3e
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    .line 367
    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->a(Lda;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_8

    .line 364
    :cond_49
    iget-object v1, v2, Lda;->d:Lda;

    iput-object v1, v0, Lda;->d:Lda;

    goto :goto_3e

    .line 356
    :cond_4e
    iget-object v0, v2, Lda;->d:Lda;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1a

    :cond_54
    move v0, v1

    .line 371
    goto :goto_8
.end method

.method private a()[Lda;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lda",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 184
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 185
    array-length v9, v4

    .line 186
    const/high16 v0, 0x4000

    if-ne v9, v0, :cond_a

    move-object v0, v4

    .line 223
    :goto_9
    return-object v0

    .line 189
    :cond_a
    mul-int/lit8 v0, v9, 0x2

    .line 190
    invoke-direct {p0, v0}, Lcom/google/gson/internal/StringMap;->a(I)[Lda;

    move-result-object v5

    .line 191
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    if-nez v0, :cond_16

    move-object v0, v5

    .line 192
    goto :goto_9

    .line 195
    :cond_16
    const/4 v0, 0x0

    move v8, v0

    :goto_18
    if-ge v8, v9, :cond_4d

    .line 200
    aget-object v6, v4, v8

    .line 201
    if-nez v6, :cond_22

    .line 195
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_18

    .line 204
    :cond_22
    iget v0, v6, Lda;->c:I

    and-int v3, v0, v9

    .line 206
    or-int v0, v8, v3

    aput-object v6, v5, v0

    .line 207
    iget-object v0, v6, Lda;->d:Lda;

    move-object v1, v7

    move-object v10, v0

    move-object v0, v6

    move-object v6, v10

    :goto_30
    if-eqz v6, :cond_48

    .line 208
    iget v2, v6, Lda;->c:I

    and-int/2addr v2, v9

    .line 209
    if-eq v2, v3, :cond_4f

    .line 210
    if-nez v1, :cond_45

    .line 211
    or-int v1, v8, v2

    aput-object v6, v5, v1

    :goto_3d
    move v1, v2

    .line 207
    :goto_3e
    iget-object v2, v6, Lda;->d:Lda;

    move v3, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_30

    .line 213
    :cond_45
    iput-object v6, v1, Lda;->d:Lda;

    goto :goto_3d

    .line 219
    :cond_48
    if-eqz v1, :cond_1e

    .line 220
    iput-object v7, v1, Lda;->d:Lda;

    goto :goto_1e

    :cond_4d
    move-object v0, v5

    .line 223
    goto :goto_9

    :cond_4f
    move-object v0, v1

    move v1, v3

    goto :goto_3e
.end method

.method private a(I)[Lda;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lda",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    new-array v0, p1, [Lda;

    check-cast v0, [Lda;

    .line 172
    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 173
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/internal/StringMap;->e:I

    .line 174
    return-object v0
.end method

.method public static synthetic b(Lcom/google/gson/internal/StringMap;)I
    .registers 2
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    return v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 498
    sget v1, Lcom/google/gson/internal/StringMap;->i:I

    .line 499
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 501
    add-int/2addr v1, v1

    shl-int/lit8 v1, v1, 0xa

    .line 502
    ushr-int/lit8 v2, v1, 0x6

    xor-int/2addr v1, v2

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 509
    :cond_17
    ushr-int/lit8 v0, v1, 0x14

    ushr-int/lit8 v2, v1, 0xc

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    .line 510
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 256
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    .line 262
    :cond_d
    iget-object v2, p0, Lcom/google/gson/internal/StringMap;->a:Lda;

    .line 263
    iget-object v0, v2, Lda;->e:Lda;

    :goto_11
    if-eq v0, v2, :cond_1b

    .line 264
    iget-object v1, v0, Lda;->e:Lda;

    .line 265
    iput-object v3, v0, Lda;->f:Lda;

    iput-object v3, v0, Lda;->e:Lda;

    move-object v0, v1

    .line 267
    goto :goto_11

    .line 269
    :cond_1b
    iput-object v2, v2, Lda;->f:Lda;

    iput-object v2, v2, Lda;->e:Lda;

    .line 270
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->a(Ljava/lang/String;)Lda;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->g:Ljava/util/Set;

    .line 284
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcw;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->g:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 107
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/StringMap;->a(Ljava/lang/String;)Lda;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_f

    iget-object v0, v1, Lda;->b:Ljava/lang/Object;

    .line 110
    :cond_f
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->f:Ljava/util/Set;

    .line 274
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcy;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->f:Ljava/util/Set;

    goto :goto_4
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 131
    if-nez p1, :cond_a

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_a
    invoke-static {p1}, Lcom/google/gson/internal/StringMap;->b(Ljava/lang/String;)I

    move-result v2

    .line 136
    iget-object v1, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 137
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 138
    aget-object v1, v1, v0

    :goto_16
    if-eqz v1, :cond_2c

    .line 139
    iget v3, v1, Lda;->c:I

    if-ne v3, v2, :cond_29

    iget-object v3, v1, Lda;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 140
    iget-object v0, v1, Lda;->b:Ljava/lang/Object;

    .line 141
    iput-object p2, v1, Lda;->b:Ljava/lang/Object;

    .line 152
    :goto_28
    return-object v0

    .line 138
    :cond_29
    iget-object v1, v1, Lda;->d:Lda;

    goto :goto_16

    .line 147
    :cond_2c
    iget v1, p0, Lcom/google/gson/internal/StringMap;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/internal/StringMap;->d:I

    iget v3, p0, Lcom/google/gson/internal/StringMap;->e:I

    if-le v1, v3, :cond_3e

    .line 148
    invoke-direct {p0}, Lcom/google/gson/internal/StringMap;->a()[Lda;

    move-result-object v0

    .line 149
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    .line 151
    :cond_3e
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/google/gson/internal/StringMap;->a(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 152
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v1

    .line 246
    :goto_8
    return-object v0

    :cond_9
    move-object v0, p1

    .line 230
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->b(Ljava/lang/String;)I

    move-result v3

    .line 231
    iget-object v4, p0, Lcom/google/gson/internal/StringMap;->c:[Lda;

    .line 232
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    and-int v5, v3, v0

    .line 233
    aget-object v2, v4, v5

    move-object v0, v1

    .line 234
    :goto_1a
    if-eqz v2, :cond_45

    .line 235
    iget v6, v2, Lda;->c:I

    if-ne v6, v3, :cond_3f

    iget-object v6, v2, Lda;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 236
    if-nez v0, :cond_3a

    .line 237
    iget-object v0, v2, Lda;->d:Lda;

    aput-object v0, v4, v5

    .line 241
    :goto_2e
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    .line 242
    invoke-direct {p0, v2}, Lcom/google/gson/internal/StringMap;->a(Lda;)V

    .line 243
    iget-object v0, v2, Lda;->b:Ljava/lang/Object;

    goto :goto_8

    .line 239
    :cond_3a
    iget-object v1, v2, Lda;->d:Lda;

    iput-object v1, v0, Lda;->d:Lda;

    goto :goto_2e

    .line 234
    :cond_3f
    iget-object v0, v2, Lda;->d:Lda;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1a

    :cond_45
    move-object v0, v1

    .line 246
    goto :goto_8
.end method

.method public size()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/gson/internal/StringMap;->d:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/gson/internal/StringMap;->h:Ljava/util/Collection;

    .line 279
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ldc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldc;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    iput-object v0, p0, Lcom/google/gson/internal/StringMap;->h:Ljava/util/Collection;

    goto :goto_4
.end method
