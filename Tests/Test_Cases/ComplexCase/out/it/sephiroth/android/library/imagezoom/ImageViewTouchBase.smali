.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/utils/IDisposable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "image"

.field protected static final MIN_ZOOM:F = 0.9f


# instance fields
.field protected final DEFAULT_ANIMATION_DURATION:I

.field protected final MAX_ZOOM:F

.field private a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmapRect:Landroid/graphics/RectF;

.field protected mCenterRect:Landroid/graphics/RectF;

.field protected final mDisplayMatrix:Landroid/graphics/Matrix;

.field public mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

.field protected mFitToScreen:Z

.field public mHandler:Landroid/os/Handler;

.field protected final mMatrixValues:[F

.field protected mMaxZoom:F

.field protected mMinZoom:F

.field protected mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mScrollRect:Landroid/graphics/RectF;

.field public mSuppMatrix:Landroid/graphics/Matrix;

.field protected mThisHeight:I

.field protected mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lit/sephiroth/android/library/imagezoom/easing/Cubic;

    invoke-direct {v0}, Lit/sephiroth/android/library/imagezoom/easing/Cubic;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 39
    const/high16 v0, -0x4080

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 42
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    .line 44
    const/high16 v0, 0x4000

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->DEFAULT_ANIMATION_DURATION:I

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    .line 55
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lit/sephiroth/android/library/imagezoom/easing/Cubic;

    invoke-direct {v0}, Lit/sephiroth/android/library/imagezoom/easing/Cubic;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 39
    const/high16 v0, -0x4080

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    .line 42
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    .line 44
    const/high16 v0, 0x4000

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->MAX_ZOOM:F

    .line 45
    const/16 v0, 0xc8

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->DEFAULT_ANIMATION_DURATION:I

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    .line 60
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 61
    return-void
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    if-eqz p1, :cond_4b

    .line 198
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    if-eqz v0, :cond_3e

    .line 199
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 200
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setMinZoom(F)V

    .line 205
    :goto_14
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    :goto_17
    if-eqz p2, :cond_27

    .line 212
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 213
    if-eqz p3, :cond_27

    .line 214
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 218
    :cond_27
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 220
    const/high16 v0, 0x3f80

    cmpg-float v0, p4, v0

    if-gez v0, :cond_55

    .line 221
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->maxZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 225
    :goto_3a
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onBitmapChanged(Landroid/graphics/drawable/Drawable;)V

    .line 226
    return-void

    .line 202
    :cond_3e
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 203
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setMinZoom(F)V

    goto :goto_14

    .line 207
    :cond_4b
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 208
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 223
    :cond_55
    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_3a
.end method

.method public center(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 374
    if-nez v0, :cond_8

    .line 380
    :cond_7
    :goto_7
    return-void

    .line 375
    :cond_8
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 376
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    .line 377
    :cond_1a
    const-string v1, "image"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "center.rect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    goto :goto_7
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 73
    return-void
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->clear()V

    .line 545
    return-void
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    if-nez v0, :cond_9

    const/4 v0, 0x0

    .line 356
    :goto_8
    return-object v0

    .line 353
    :cond_9
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 355
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 356
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBitmapRect:Landroid/graphics/RectF;

    goto :goto_8
.end method

.method public getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 383
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    if-nez v0, :cond_f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 413
    :goto_e
    return-object v0

    .line 387
    :cond_f
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 390
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 392
    if-eqz p3, :cond_80

    .line 393
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v2

    .line 394
    int-to-float v5, v2

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4c

    .line 395
    int-to-float v2, v2

    sub-float v0, v2, v0

    div-float/2addr v0, v6

    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    move v2, v0

    .line 402
    :goto_33
    if-eqz p2, :cond_7e

    .line 403
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 404
    int-to-float v5, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_68

    .line 405
    int-to-float v0, v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    .line 412
    :goto_44
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 413
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mCenterRect:Landroid/graphics/RectF;

    goto :goto_e

    .line 396
    :cond_4c
    iget v0, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_57

    .line 397
    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    move v2, v0

    .line 398
    goto :goto_33

    :cond_57
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_80

    .line 399
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    move v2, v0

    goto :goto_33

    .line 406
    :cond_68
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_72

    .line 407
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    .line 408
    goto :goto_44

    :cond_72
    iget v4, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7e

    .line 409
    int-to-float v0, v0

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    goto :goto_44

    :cond_7e
    move v0, v1

    goto :goto_44

    :cond_80
    move v2, v1

    goto :goto_33
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 287
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getImageViewMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 4
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 276
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 277
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .registers 3

    .prologue
    .line 257
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    .line 258
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->maxZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 260
    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    return v0
.end method

.method public getMinZoom()F
    .registers 3

    .prologue
    .line 264
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 265
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->minZoom()F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 267
    :cond_d
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    return v0
.end method

.method protected getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    .line 297
    const-string v0, "image"

    const-string v1, "getProperBaseMatrix"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 299
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 302
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 304
    cmpl-float v4, v2, v0

    if-gtz v4, :cond_28

    cmpl-float v4, v3, v1

    if-lez v4, :cond_5a

    .line 305
    :cond_28
    div-float v4, v0, v2

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 306
    div-float v5, v1, v3

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 308
    const-string v5, "image"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "scale: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 310
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    .line 311
    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    .line 312
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    :goto_59
    return-void

    .line 314
    :cond_5a
    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    .line 315
    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    .line 316
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 317
    const-string v0, "image"

    const-string v1, "scale: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method

.method protected getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 328
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 329
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 330
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 331
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 332
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 333
    div-float v4, v0, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 334
    div-float v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 335
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 336
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 337
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    return-void
.end method

.method public getRotation()F
    .registers 2

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .registers 3
    .parameter

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 342
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 68
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    return-void
.end method

.method protected maxZoom()F
    .registers 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    if-nez v0, :cond_9

    .line 243
    const/high16 v0, 0x3f80

    .line 249
    :goto_8
    return v0

    .line 246
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 247
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 248
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 249
    goto :goto_8
.end method

.method protected minZoom()F
    .registers 2

    .prologue
    .line 253
    const/high16 v0, 0x3f80

    return v0
.end method

.method protected onBitmapChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    if-eqz v0, :cond_9

    .line 230
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;->onBitmapChanged(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_9
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 90
    sub-int v0, p4, p2

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisWidth:I

    .line 91
    sub-int v0, p5, p3

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mThisHeight:I

    .line 92
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 93
    if-eqz v0, :cond_15

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_15
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 98
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    if-eqz v0, :cond_3c

    .line 99
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix2(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 100
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setMinZoom(F)V

    .line 105
    :goto_2d
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 106
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(F)V

    .line 108
    :cond_3b
    return-void

    .line 102
    :cond_3c
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getProperBaseMatrix(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    .line 103
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setMinZoom(F)V

    goto :goto_2d
.end method

.method protected onZoom(F)V
    .registers 2
    .parameter

    .prologue
    .line 448
    return-void
.end method

.method public onZoomAnimationCompleted(F)V
    .registers 2
    .parameter

    .prologue
    .line 450
    return-void
.end method

.method public panBy(DD)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 457
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 459
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 460
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mScrollRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postTranslate(FF)V

    .line 461
    invoke-virtual {p0, v5, v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 462
    return-void
.end method

.method protected postScale(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 423
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 424
    return-void
.end method

.method protected postTranslate(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 418
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 419
    return-void
.end method

.method public scrollBy(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 453
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    .line 454
    return-void
.end method

.method protected scrollBy(FFD)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    float-to-double v6, p1

    .line 484
    float-to-double v8, p2

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 486
    iget-object v10, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lja;

    move-object v1, p0

    move-wide v2, p3

    invoke-direct/range {v0 .. v9}, Lja;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method public setFitToScreen(Z)V
    .registers 3
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    if-eq p1, v0, :cond_9

    .line 77
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mFitToScreen:Z

    .line 78
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 80
    :cond_9
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 113
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V

    .line 132
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    const/high16 v0, -0x4080

    invoke-virtual {p0, p1, p2, p3, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;F)V

    .line 152
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;ZLandroid/graphics/Matrix;F)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    if-eqz p1, :cond_b

    .line 167
    new-instance v0, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/imagezoom/graphics/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 170
    :goto_a
    return-void

    .line 169
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    goto :goto_a
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter

    .prologue
    .line 174
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 175
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 181
    if-gtz v0, :cond_13

    .line 182
    new-instance v0, Liz;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Liz;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 193
    :goto_12
    return-void

    .line 192
    :cond_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->_setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    goto :goto_12
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public setMinZoom(F)V
    .registers 5
    .parameter

    .prologue
    .line 83
    const-string v0, "image"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minZoom: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMinZoom:F

    .line 85
    return-void
.end method

.method public setOnBitmapChangedListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnBitmapChangedListener;

    .line 65
    return-void
.end method

.method protected updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 466
    if-nez p1, :cond_4

    .line 480
    :cond_3
    :goto_3
    return-void

    .line 470
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 471
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 473
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1c

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1c

    iput v4, p2, Landroid/graphics/RectF;->top:F

    .line 474
    :cond_1c
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2a

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2a

    iput v4, p2, Landroid/graphics/RectF;->left:F

    .line 475
    :cond_2a
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_41

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_41

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 476
    :cond_41
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5a

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5a

    .line 477
    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 478
    :cond_5a
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_6b

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 479
    :cond_6b
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    sub-float v2, v0, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_3
.end method

.method protected zoomTo(F)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 427
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 428
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 429
    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 430
    return-void
.end method

.method public zoomTo(FF)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 433
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 434
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 435
    invoke-virtual {p0, p1, v0, v1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFFF)V

    .line 436
    return-void
.end method

.method public zoomTo(FFF)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 439
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mMaxZoom:F

    .line 440
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 441
    div-float v0, p1, v0

    .line 442
    const-string v1, "image"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zoomTo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", center: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0, v0, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->postScale(FFF)V

    .line 444
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 445
    invoke-virtual {p0, v4, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    .line 446
    return-void
.end method

.method protected zoomTo(FFFF)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 511
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxZoom()F

    move-result p1

    .line 512
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 513
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 515
    sub-float v5, p1, v6

    .line 517
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 518
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 519
    invoke-virtual {p0, v0, v2, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 521
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v7, p2, v1

    .line 522
    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    add-float v8, p3, v0

    .line 524
    iget-object v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljb;

    move-object v1, p0

    move v2, p4

    invoke-direct/range {v0 .. v8}, Ljb;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method
