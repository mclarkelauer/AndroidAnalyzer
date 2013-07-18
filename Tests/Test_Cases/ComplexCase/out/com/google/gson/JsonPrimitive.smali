.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/JsonPrimitive;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->a(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private static a(Lcom/google/gson/JsonPrimitive;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_23

    .line 330
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 331
    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_1f

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_1f

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    .line 334
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 331
    goto :goto_20

    :cond_23
    move v0, v1

    .line 334
    goto :goto_20
.end method

.method private static b(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 279
    :cond_6
    :goto_6
    return v0

    .line 273
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 274
    sget-object v4, Lcom/google/gson/JsonPrimitive;->a:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v1

    :goto_f
    if-ge v2, v5, :cond_1c

    aget-object v6, v4, v2

    .line 275
    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    move v0, v1

    .line 279
    goto :goto_6
.end method


# virtual methods
.method a()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    .line 92
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    .line 99
    :goto_10
    return-void

    .line 95
    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 97
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    goto :goto_10

    .line 95
    :cond_22
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    if-ne p0, p1, :cond_5

    .line 321
    :cond_4
    :goto_4
    return v0

    .line 304
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 305
    goto :goto_4

    .line 307
    :cond_13
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 308
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v2, :cond_1f

    .line 309
    iget-object v2, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 311
    :cond_1f
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 312
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .line 314
    :cond_41
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    iget-object v2, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_70

    .line 315
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 318
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 319
    cmpl-double v6, v2, v4

    if-eqz v6, :cond_6d

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6d
    move v1, v0

    :cond_6e
    move v0, v1

    goto :goto_4

    .line 321
    :cond_70
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getAsBoolean()Z
    .registers 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 128
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 131
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_e
.end method

.method public getAsByte()B
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_e
.end method

.method public getAsCharacter()C
    .registers 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .registers 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_e
.end method

.method public getAsFloat()F
    .registers 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_e
.end method

.method public getAsInt()I
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public getAsLong()J
    .registers 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_e
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    goto :goto_10
.end method

.method public getAsShort()S
    .registers 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_e
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 172
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_e
    return-object v0

    .line 173
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 174
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 176
    :cond_1e
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/16 v2, 0x20

    .line 284
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 285
    const/16 v0, 0x1f

    .line 296
    :goto_8
    return v0

    .line 288
    :cond_9
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->a(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 289
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 290
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    .line 292
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_33

    .line 293
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 294
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_8

    .line 296
    :cond_33
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8
.end method

.method public isBoolean()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
