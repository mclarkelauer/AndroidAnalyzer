.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    .line 199
    const-string v0, "image"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDoubleTap. double tap enabled? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    if-eqz v0, :cond_5c

    .line 201
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 203
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDoubleTapPost(FF)F

    move-result v0

    .line 204
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 205
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v0, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 206
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x4348

    invoke-virtual {v1, v0, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FFFF)V

    .line 207
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 210
    :cond_5c
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 211
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    move-result-object v0

    invoke-interface {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;->onDoubleTap()V

    .line 214
    :cond_6d
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 220
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 221
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setPressed(Z)V

    .line 222
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->performLongClick()Z

    .line 225
    :cond_1d
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
