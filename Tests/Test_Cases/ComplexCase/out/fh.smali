.class public final Lfh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lfh;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([CII)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    move v0, p2

    move v2, v1

    .line 34
    :goto_3
    add-int v3, p2, p3

    if-ge v0, v3, :cond_f

    .line 35
    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, p1, v0

    add-int/2addr v2, v3

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 39
    :cond_f
    ushr-int/lit8 v0, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    .line 40
    ushr-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 41
    iget-object v2, p0, Lfh;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    .line 43
    iget-object v0, p0, Lfh;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 44
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p3, :cond_39

    .line 45
    :cond_2d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 46
    iget-object v1, p0, Lfh;->a:[Ljava/lang/String;

    aput-object v0, v1, v2

    .line 58
    :cond_36
    :goto_36
    return-object v0

    .line 50
    :cond_37
    add-int/lit8 v1, v1, 0x1

    :cond_39
    if-ge v1, p3, :cond_36

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v1

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_37

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 53
    iget-object v1, p0, Lfh;->a:[Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_36
.end method
