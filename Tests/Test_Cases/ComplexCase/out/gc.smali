.class public Lgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lgb;

.field final synthetic b:Lcom/tndev/common/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/tndev/common/utils/ImageLoader;Lgb;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lgc;->b:Lcom/tndev/common/utils/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lgc;->a:Lgb;

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lgc;->b:Lcom/tndev/common/utils/ImageLoader;

    iget-object v1, p0, Lgc;->a:Lgb;

    invoke-virtual {v0, v1}, Lcom/tndev/common/utils/ImageLoader;->a(Lgb;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 107
    :cond_a
    :goto_a
    return-void

    .line 100
    :cond_b
    iget-object v0, p0, Lgc;->a:Lgb;

    iget-object v0, v0, Lgb;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tndev/common/utils/ImageLoader;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lgc;->b:Lcom/tndev/common/utils/ImageLoader;

    iget-object v1, v1, Lcom/tndev/common/utils/ImageLoader;->b:Lcom/tndev/common/utils/MemoryCache;

    iget-object v2, p0, Lgc;->a:Lgb;

    iget-object v2, v2, Lgb;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tndev/common/utils/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v1, p0, Lgc;->b:Lcom/tndev/common/utils/ImageLoader;

    iget-object v2, p0, Lgc;->a:Lgb;

    invoke-virtual {v1, v2}, Lcom/tndev/common/utils/ImageLoader;->a(Lgb;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 104
    new-instance v1, Lga;

    iget-object v2, p0, Lgc;->b:Lcom/tndev/common/utils/ImageLoader;

    iget-object v3, p0, Lgc;->a:Lgb;

    invoke-direct {v1, v2, v0, v3}, Lga;-><init>(Lcom/tndev/common/utils/ImageLoader;Landroid/graphics/Bitmap;Lgb;)V

    .line 105
    iget-object v0, p0, Lgc;->a:Lgb;

    iget-object v0, v0, Lgb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method
