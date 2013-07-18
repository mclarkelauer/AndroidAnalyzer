.class Lcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field a:[C


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcu;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcu;->a:[C

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 111
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcu;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
