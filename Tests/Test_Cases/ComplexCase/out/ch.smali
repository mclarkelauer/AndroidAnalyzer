.class public final Lch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/ParameterizedType;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;

.field private final c:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_23

    move-object v0, p2

    .line 442
    check-cast v0, Ljava/lang/Class;

    .line 443
    if-nez p1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_58

    :cond_14
    move v1, v3

    :goto_15
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 444
    if-eqz p1, :cond_20

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5a

    :cond_20
    :goto_20
    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 447
    :cond_23
    if-nez p1, :cond_5c

    const/4 v0, 0x0

    :goto_26
    iput-object v0, p0, Lch;->a:Ljava/lang/reflect/Type;

    .line 448
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lch;->b:Ljava/lang/reflect/Type;

    .line 449
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    .line 450
    :goto_36
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-ge v2, v0, :cond_61

    .line 451
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->a(Ljava/lang/reflect/Type;)V

    .line 453
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    iget-object v1, p0, Lch;->c:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, v0, v2

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_58
    move v1, v2

    .line 443
    goto :goto_15

    :cond_5a
    move v3, v2

    .line 444
    goto :goto_20

    .line 447
    :cond_5c
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_26

    .line 455
    :cond_61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 470
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lch;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lch;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 475
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lch;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lch;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    iget-object v0, p0, Lch;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v0, p0, Lch;->c:[Ljava/lang/reflect/Type;

    array-length v0, v0

    if-nez v0, :cond_1f

    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_1e
    return-object v0

    .line 488
    :cond_1f
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch;->c:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v0, 0x1

    :goto_32
    iget-object v2, p0, Lch;->c:[Ljava/lang/reflect/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 490
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch;->c:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 492
    :cond_4b
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
