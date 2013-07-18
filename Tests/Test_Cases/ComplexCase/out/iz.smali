.class public Liz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/graphics/Matrix;

.field private final synthetic e:F


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Liz;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Liz;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Liz;->c:Z

    iput-object p4, p0, Liz;->d:Landroid/graphics/Matrix;

    iput p5, p0, Liz;->e:F

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 186
    iget-object v0, p0, Liz;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Liz;->b:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Liz;->c:Z

    iget-object v3, p0, Liz;->d:Landroid/graphics/Matrix;

    iget v4, p0, Liz;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/Matrix;F)V

    .line 187
    return-void
.end method
