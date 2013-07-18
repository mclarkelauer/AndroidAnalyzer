.class public Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->b:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    .line 50
    iput p1, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    .line 51
    iget-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    const v1, -0x343435

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method

.method private a()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_17

    .line 126
    :cond_16
    return-void

    .line 102
    :cond_17
    invoke-virtual {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    .line 103
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    move v2, v3

    .line 107
    :goto_3d
    iget v4, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->f:I

    if-gt v0, v4, :cond_16

    move v4, v1

    move v5, v2

    .line 110
    :goto_43
    iget v6, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->e:I

    if-le v4, v6, :cond_4d

    .line 122
    if-eqz v2, :cond_77

    move v2, v1

    .line 107
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 112
    :cond_4d
    iget v6, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    mul-int/2addr v6, v0

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 113
    iget v6, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    mul-int/2addr v6, v4

    iput v6, v8, Landroid/graphics/Rect;->left:I

    .line 114
    iget v6, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    add-int/2addr v6, v9

    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 115
    iget v6, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    add-int/2addr v6, v9

    iput v6, v8, Landroid/graphics/Rect;->right:I

    .line 117
    if-eqz v5, :cond_72

    iget-object v6, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->c:Landroid/graphics/Paint;

    :goto_69
    invoke-virtual {v7, v8, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    if-eqz v5, :cond_75

    move v5, v1

    .line 110
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 117
    :cond_72
    iget-object v6, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->d:Landroid/graphics/Paint;

    goto :goto_69

    :cond_75
    move v5, v3

    .line 119
    goto :goto_6f

    :cond_77
    move v2, v3

    .line 122
    goto :goto_4a
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->g:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 82
    iget v2, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->e:I

    .line 83
    iget v1, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->f:I

    .line 85
    invoke-direct {p0}, Lafzkl/development/mColorPicker/drawables/AlphaPatternDrawable;->a()V

    .line 87
    return-void
.end method

.method public setAlpha(I)V
    .registers 4
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Alpha is not supported by this drawwable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ColorFilter is not supported by this drawwable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
