.class public Lit/sephiroth/android/library/imagezoom/easing/Cubic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/easing/Easing;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    div-double v0, p1, p7

    mul-double v2, p5, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    const-wide/high16 v0, 0x4000

    div-double v0, p7, v0

    div-double v0, p1, v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_15

    const-wide/high16 v2, 0x4000

    div-double v2, p5, v2

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    .line 18
    :goto_14
    return-wide v0

    :cond_15
    const-wide/high16 v2, 0x4000

    div-double v2, p5, v2

    const-wide/high16 v4, 0x4000

    sub-double/2addr v0, v4

    mul-double v4, v0, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x4000

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    goto :goto_14
.end method

.method public easeOut(DDDD)D
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 7
    div-double v0, p1, p7

    sub-double/2addr v0, v4

    mul-double v2, v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    return-wide v0
.end method
