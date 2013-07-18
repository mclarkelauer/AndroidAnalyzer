.class public Lhq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 284
    :cond_6
    :goto_6
    return v2

    .line 263
    :pswitch_7
    :try_start_7
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 264
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/EditActivity;->finish()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_6

    .line 265
    :catch_14
    move-exception v0

    goto :goto_6

    .line 269
    :pswitch_16
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->s(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/tndev/funnyframes/EditActivity;->b:I

    .line 272
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/tndev/funnyframes/EditActivity;->c:I

    .line 274
    iget-object v0, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->t(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 279
    :pswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .line 280
    iget-object v1, p0, Lhq;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->handleException(Ljava/lang/Exception;)V

    goto :goto_6

    .line 260
    nop

    :pswitch_data_5e
    .packed-switch -0x1
        :pswitch_53
        :pswitch_7
        :pswitch_16
    .end packed-switch
.end method
