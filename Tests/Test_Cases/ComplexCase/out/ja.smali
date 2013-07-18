.class public Lja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:D

.field b:D

.field final synthetic c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic d:D

.field private final synthetic e:J

.field private final synthetic f:D

.field private final synthetic g:D


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;DJDD)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 1
    iput-object p1, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-wide p2, p0, Lja;->d:D

    iput-wide p4, p0, Lja;->e:J

    iput-wide p6, p0, Lja;->f:D

    iput-wide p8, p0, Lja;->g:D

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-wide v0, p0, Lja;->a:D

    .line 489
    iput-wide v0, p0, Lja;->b:D

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v3, 0x0

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 494
    iget-wide v5, p0, Lja;->d:D

    iget-wide v7, p0, Lja;->e:J

    sub-long/2addr v0, v7

    long-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 495
    iget-object v0, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    iget-wide v5, p0, Lja;->f:D

    iget-wide v7, p0, Lja;->d:D

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v9

    .line 496
    iget-object v0, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    iget-wide v5, p0, Lja;->g:D

    iget-wide v7, p0, Lja;->d:D

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeOut(DDDD)D

    move-result-wide v3

    .line 497
    iget-object v0, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-wide v5, p0, Lja;->a:D

    sub-double v5, v9, v5

    iget-wide v7, p0, Lja;->b:D

    sub-double v7, v3, v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->panBy(DD)V

    .line 498
    iput-wide v9, p0, Lja;->a:D

    .line 499
    iput-wide v3, p0, Lja;->b:D

    .line 500
    iget-wide v3, p0, Lja;->d:D

    cmpg-double v0, v1, v3

    if-gez v0, :cond_49

    .line 501
    iget-object v0, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    :cond_48
    :goto_48
    return-void

    .line 503
    :cond_49
    iget-object v0, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v12, v12}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter(Landroid/graphics/Matrix;ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 504
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v11

    if-nez v1, :cond_5f

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_48

    :cond_5f
    iget-object v1, p0, Lja;->c:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->scrollBy(FF)V

    goto :goto_48
.end method
