.class public Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 28
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 42
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->invalidateSelf()V

    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 53
    return-void
.end method
