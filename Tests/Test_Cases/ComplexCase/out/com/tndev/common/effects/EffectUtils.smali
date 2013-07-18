.class public Lcom/tndev/common/effects/EffectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_MAX:I = 0xff

.field public static final COLOR_MIN:I = 0x0

.field public static final FLIP_HORIZONTAL:I = 0x2

.field public static final FLIP_VERTICAL:I = 0x1

.field public static final FULL_CIRCLE_DEGREE:D = 360.0

.field public static final HALF_CIRCLE_DEGREE:D = 180.0

.field public static final PI:D = 3.14159

.field public static final RANGE:D = 256.0


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustSaturation(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 36
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 38
    invoke-virtual {v3, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 39
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 43
    return-object v0
.end method

.method public static blackAndWhite()Landroid/graphics/ColorMatrixColorFilter;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 55
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static fleaEffect(Landroid/graphics/Bitmap;)V
    .registers 13
    .parameter

    .prologue
    const/16 v11, 0xff

    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 87
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 89
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 91
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move v4, v2

    .line 95
    :goto_1c
    if-lt v4, v7, :cond_26

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 108
    return-void

    :cond_26
    move v0, v2

    .line 96
    :goto_27
    if-lt v0, v3, :cond_2d

    .line 95
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1c

    .line 98
    :cond_2d
    mul-int v6, v4, v3

    add-int/2addr v6, v0

    .line 100
    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 101
    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 100
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 103
    aget v9, v1, v6

    or-int/2addr v8, v9

    aput v8, v1, v6

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public static gaussianBlur(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 115
    new-array v0, v3, [[D

    const/4 v1, 0x0

    new-array v2, v3, [D

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 116
    new-array v2, v3, [D

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [D

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    .line 118
    new-instance v1, Lcom/tndev/common/effects/ConvolutionMatrix;

    invoke-direct {v1}, Lcom/tndev/common/effects/ConvolutionMatrix;-><init>()V

    .line 119
    invoke-virtual {v1, v0}, Lcom/tndev/common/effects/ConvolutionMatrix;->applyConfig([[D)V

    .line 120
    const-wide/high16 v2, 0x4030

    iput-wide v2, v1, Lcom/tndev/common/effects/ConvolutionMatrix;->Factor:D

    .line 121
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tndev/common/effects/ConvolutionMatrix;->Offset:D

    .line 122
    invoke-virtual {v1, p0}, Lcom/tndev/common/effects/ConvolutionMatrix;->computeConvolution3x3(Landroid/graphics/Bitmap;)V

    .line 123
    return-void

    .line 115
    nop

    :array_30
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data

    .line 116
    :array_40
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x10t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
    .end array-data

    :array_50
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method

.method public static sepia()Landroid/graphics/ColorMatrixColorFilter;
    .registers 5

    .prologue
    const/high16 v4, 0x3f80

    .line 65
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 69
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 71
    const v2, 0x3f733333

    const v3, 0x3f1eb852

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 72
    invoke-virtual {v0, v1, v0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    .line 74
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method
