.class public Ljb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic b:F

.field private final synthetic c:J

.field private final synthetic d:F

.field private final synthetic e:F

.field private final synthetic f:F

.field private final synthetic g:F


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput p2, p0, Ljb;->b:F

    iput-wide p3, p0, Ljb;->c:J

    iput p5, p0, Ljb;->d:F

    iput p6, p0, Ljb;->e:F

    iput p7, p0, Ljb;->f:F

    iput p8, p0, Ljb;->g:F

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 529
    iget v2, p0, Ljb;->b:F

    iget-wide v3, p0, Ljb;->c:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 530
    iget-object v0, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mEasing:Lit/sephiroth/android/library/imagezoom/easing/Easing;

    float-to-double v1, v9

    const-wide/16 v3, 0x0

    iget v5, p0, Ljb;->d:F

    float-to-double v5, v5

    iget v7, p0, Ljb;->b:F

    float-to-double v7, v7

    invoke-interface/range {v0 .. v8}, Lit/sephiroth/android/library/imagezoom/easing/Easing;->easeInOut(DDDD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 531
    iget-object v1, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget v2, p0, Ljb;->e:F

    add-float/2addr v0, v2

    iget v2, p0, Ljb;->f:F

    iget v3, p0, Ljb;->g:F

    invoke-virtual {v1, v0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->zoomTo(FFF)V

    .line 532
    iget v0, p0, Ljb;->b:F

    cmpg-float v0, v9, v0

    if-gez v0, :cond_3b

    .line 533
    iget-object v0, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    :goto_3a
    return-void

    .line 535
    :cond_3b
    iget-object v0, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->onZoomAnimationCompleted(F)V

    .line 536
    iget-object v0, p0, Ljb;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0, v10, v10}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->center(ZZ)V

    goto :goto_3a
.end method
