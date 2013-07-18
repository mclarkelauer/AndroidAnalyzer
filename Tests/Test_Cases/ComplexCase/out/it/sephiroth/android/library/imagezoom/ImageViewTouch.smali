.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.source "SourceFile"


# instance fields
.field private a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

.field protected mCurrentScaleFactor:F

.field protected mDoubleTapDirection:I

.field protected mDoubleTapEnabled:Z

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field protected mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScaleEnabled:Z

.field protected mScaleFactor:F

.field protected mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected mScrollEnabled:Z

.field protected mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    .line 30
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleEnabled:Z

    .line 31
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    .line 36
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    return-object v0
.end method


# virtual methods
.method protected _setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->_setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 92
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    .line 93
    return-void
.end method

.method public canScroll(I)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->updateRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 182
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 183
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 185
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_31

    .line 186
    if-gez p1, :cond_31

    .line 187
    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    .line 192
    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    move v0, v1

    .line 187
    goto :goto_2e

    .line 191
    :cond_31
    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    .line 192
    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_2e

    move v0, v1

    goto :goto_2e
.end method

.method public getDoubleTapEnabled()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    return v0
.end method

.method protected getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .registers 2

    .prologue
    .line 73
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$GestureListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method protected getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch$ScaleListener;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method protected init()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-super {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->init()V

    .line 41
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mTouchSlop:I

    .line 42
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 43
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 45
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 46
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 48
    const/high16 v0, 0x3f80

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 49
    iput v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 50
    return-void
.end method

.method protected onBitmapChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onBitmapChanged(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 85
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 86
    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 87
    return-void
.end method

.method protected onDoubleTapPost(FF)F
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 127
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    if-ne v0, v1, :cond_18

    .line 128
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_14

    .line 129
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleFactor:F

    add-float p2, p1, v0

    .line 136
    :goto_13
    return p2

    .line 131
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    goto :goto_13

    .line 135
    :cond_18
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapDirection:I

    .line 136
    const/high16 p2, 0x3f80

    goto :goto_13
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4448

    const/high16 v5, 0x4000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    if-nez v2, :cond_b

    .line 168
    :cond_a
    :goto_a
    return v0

    .line 157
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_a

    .line 158
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_a

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 163
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_41

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_a

    .line 164
    :cond_41
    div-float v0, v2, v5

    div-float v2, v3, v5

    const-wide v3, 0x4072c00000000000L

    invoke-virtual {p0, v0, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->scrollBy(FFD)V

    .line 165
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    move v0, v1

    .line 166
    goto :goto_a
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    if-nez v2, :cond_7

    .line 151
    :cond_6
    :goto_6
    return v0

    .line 143
    :cond_7
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v1, :cond_6

    .line 145
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_6

    .line 146
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 148
    const-string v0, "image"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScroll: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    neg-float v0, p3

    neg-float v2, p4

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->scrollBy(FF)V

    .line 150
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    move v0, v1

    .line 151
    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 100
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_34

    .line 107
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0

    .line 102
    :pswitch_1d
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1b

    .line 103
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    const/high16 v1, 0x4248

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FF)V

    goto :goto_1b

    .line 100
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method protected onZoom(F)V
    .registers 3
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoom(F)V

    .line 113
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_d

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 114
    :cond_d
    return-void
.end method

.method protected onZoomAnimationCompleted(F)V
    .registers 4
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoomAnimationCompleted(F)V

    .line 119
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_d

    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mCurrentScaleFactor:F

    .line 121
    :cond_d
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1e

    .line 122
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinZoom()F

    move-result v0

    const/high16 v1, 0x4248

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->zoomTo(FF)V

    .line 124
    :cond_1e
    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mDoubleTapEnabled:Z

    .line 58
    return-void
.end method

.method public setDoubleTapListener(Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch$OnImageViewTouchDoubleTapListener;

    .line 54
    return-void
.end method

.method public setScaleEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScaleEnabled:Z

    .line 62
    return-void
.end method

.method public setScrollEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->mScrollEnabled:Z

    .line 66
    return-void
.end method
