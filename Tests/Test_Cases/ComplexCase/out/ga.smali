.class public Lga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lgb;

.field final synthetic c:Lcom/tndev/common/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/tndev/common/utils/ImageLoader;Landroid/graphics/Bitmap;Lgb;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lga;->c:Lcom/tndev/common/utils/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lga;->a:Landroid/graphics/Bitmap;

    .line 124
    iput-object p3, p0, Lga;->b:Lgb;

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lga;->c:Lcom/tndev/common/utils/ImageLoader;

    iget-object v1, p0, Lga;->b:Lgb;

    invoke-virtual {v0, v1}, Lcom/tndev/common/utils/ImageLoader;->a(Lgb;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    :goto_a
    return-void

    .line 130
    :cond_b
    iget-object v0, p0, Lga;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 131
    iget-object v0, p0, Lga;->b:Lgb;

    iget-object v0, v0, Lgb;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lga;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 133
    :cond_19
    iget-object v0, p0, Lga;->b:Lgb;

    iget-object v0, v0, Lgb;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lga;->c:Lcom/tndev/common/utils/ImageLoader;

    iget v1, v1, Lcom/tndev/common/utils/ImageLoader;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a
.end method
