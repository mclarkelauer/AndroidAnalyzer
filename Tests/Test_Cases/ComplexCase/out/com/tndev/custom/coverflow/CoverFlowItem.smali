.class public Lcom/tndev/custom/coverflow/CoverFlowItem;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:F

.field f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    .line 23
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    .line 24
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    .line 25
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    .line 23
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    .line 24
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    .line 25
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    .line 23
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    .line 24
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    .line 25
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    .line 29
    return-void
.end method

.method static a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x100

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    .line 77
    cmpl-float v0, v10, p1

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 122
    :goto_c
    return-object p0

    .line 85
    :cond_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v1, p2, 0x2

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v11, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 87
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 85
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 90
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 94
    int-to-float v1, p2

    invoke-virtual {v5, v1, v10, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 95
    int-to-float v1, p2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    .line 96
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 97
    sub-int/2addr v4, p2

    int-to-float v4, v4

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    int-to-float v1, p2

    int-to-float v2, p2

    invoke-virtual {v0, p0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    const/high16 v2, -0x4080

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 107
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    .line 109
    neg-int v1, v1

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 110
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, p2

    neg-int v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, p2, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    invoke-virtual {v0, p0, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 114
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v2

    .line 115
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v5, v2

    const/high16 v6, 0x4000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v10

    move v4, v10

    .line 114
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 116
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 117
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 121
    add-float v7, v11, p1

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    .line 119
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object p0, v9

    .line 122
    goto/16 :goto_c
.end method


# virtual methods
.method public getCoverHeight()I
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCoverWidth()I
    .registers 3

    .prologue
    .line 51
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->a:I

    return v0
.end method

.method public getOriginalCoverHeight()I
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;IF)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput p2, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->b:I

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public setNumber(I)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->a:I

    .line 48
    return-void
.end method

.method public setScaleX(F)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->e:F

    .line 41
    return-void
.end method

.method public setScaleY(F)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowItem;->f:F

    .line 45
    return-void
.end method
