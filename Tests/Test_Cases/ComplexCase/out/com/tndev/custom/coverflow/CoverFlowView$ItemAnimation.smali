.class public Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 728
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 720
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->g:F

    .line 722
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->h:F

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->i:Z

    .line 729
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setFillAfter(Z)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setFillBefore(Z)V

    .line 731
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 781
    iget-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->i:Z

    if-eqz v0, :cond_73

    sget v0, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 784
    iget-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->i:Z

    if-eqz v0, :cond_19

    .line 785
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_76

    const/4 v0, 0x0

    :goto_15
    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 787
    :cond_19
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->h:F

    .line 788
    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->g:F

    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->h:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    .line 787
    add-float/2addr v0, v1

    .line 789
    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->c:I

    int-to-float v1, v1

    .line 790
    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->d:I

    iget v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    .line 789
    add-float/2addr v1, v2

    .line 791
    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->e:I

    .line 792
    iget v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->f:I

    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    .line 791
    add-int/2addr v2, v3

    .line 793
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 794
    new-instance v4, Landroid/graphics/Camera;

    invoke-direct {v4}, Landroid/graphics/Camera;-><init>()V

    .line 795
    invoke-virtual {v4, v5, v5, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 797
    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 799
    invoke-virtual {v4, v3}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 800
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->a:I

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->b:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 801
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->a:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 803
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 804
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 805
    return-void

    .line 782
    :cond_73
    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    goto :goto_7

    .line 785
    :cond_76
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public getStartAngleDegrees()F
    .registers 2

    .prologue
    .line 763
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->h:F

    return v0
.end method

.method public getStartXOffset()I
    .registers 2

    .prologue
    .line 767
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->e:I

    return v0
.end method

.method public getStopAngleDegrees()F
    .registers 2

    .prologue
    .line 759
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->g:F

    return v0
.end method

.method public getStopXOffset()I
    .registers 2

    .prologue
    .line 771
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->f:I

    return v0
.end method

.method public getStopZOffset()I
    .registers 2

    .prologue
    .line 775
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->d:I

    return v0
.end method

.method public setRotation(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 739
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->h:F

    .line 740
    iput p2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->g:F

    .line 741
    return-void
.end method

.method public setStatic()V
    .registers 3

    .prologue
    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->i:Z

    .line 735
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setDuration(J)V

    .line 736
    return-void
.end method

.method public setViewDimensions(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 754
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->a:I

    .line 755
    iput p2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->b:I

    .line 756
    return-void
.end method

.method public setXTranslation(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 744
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->e:I

    .line 745
    iput p2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->f:I

    .line 746
    return-void
.end method

.method public setZTranslation(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 749
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->c:I

    .line 750
    iput p2, p0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->d:I

    .line 751
    return-void
.end method
