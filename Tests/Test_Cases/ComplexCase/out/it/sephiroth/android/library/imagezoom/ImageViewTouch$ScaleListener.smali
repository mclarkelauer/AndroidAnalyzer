.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 243
    const-string v1, "image"

    const-string v2, "onScale"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    .line 245
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    .line 246
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleEnabled:Z

    if-eqz v2, :cond_6a

    .line 247
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v3

    const v4, 0x3dcccccd

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 248
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FFF)V

    .line 249
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v4

    const/high16 v5, 0x3f80

    sub-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 250
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 251
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 254
    :goto_69
    return v0

    :cond_6a
    const/4 v0, 0x0

    goto :goto_69
.end method
