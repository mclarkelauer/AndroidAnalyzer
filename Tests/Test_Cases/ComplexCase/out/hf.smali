.class public Lhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 818
    :try_start_0
    iget-object v0, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 819
    iget-object v0, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 820
    iget-object v0, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 824
    :cond_17
    iget-object v0, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v2, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v2}, Lcom/tndev/funnyframes/EditActivity;->u(Lcom/tndev/funnyframes/EditActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->p(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    iget-object v4, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v4}, Lcom/tndev/funnyframes/EditActivity;->o(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromUri(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 825
    iget-object v0, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 832
    :goto_41
    return-void

    .line 826
    :catch_42
    move-exception v0

    .line 828
    iget-object v1, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 830
    iget-object v1, p0, Lhf;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_41
.end method
