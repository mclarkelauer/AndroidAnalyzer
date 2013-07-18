.class public Lhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;

.field private final synthetic b:Lcom/tndev/hdframes/model/FrameInfo;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iput-object p2, p0, Lhc;->b:Lcom/tndev/hdframes/model/FrameInfo;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 507
    :try_start_1
    iget-object v0, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhc;->b:Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v1}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFileFullSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 509
    iget-object v0, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 510
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 513
    int-to-float v2, v1

    iget-object v3, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->o(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 514
    iget-object v3, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->p(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 515
    iget-object v4, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v4}, Lcom/tndev/funnyframes/EditActivity;->o(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    .line 518
    iget-object v5, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v5}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 519
    iget-object v5, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 520
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 522
    const/16 v5, 0x9

    new-array v5, v5, [F

    .line 523
    iget-object v6, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v6}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 525
    const/4 v6, 0x2

    aget v6, v5, v6

    mul-float/2addr v6, v2

    .line 526
    const/4 v7, 0x5

    aget v7, v5, v7

    mul-float/2addr v2, v7

    .line 528
    const/4 v7, 0x2

    aget v7, v5, v7

    sub-float/2addr v6, v7

    .line 529
    const/4 v7, 0x5

    aget v5, v5, v7

    sub-float/2addr v2, v5

    .line 531
    iget-object v5, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v5}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 534
    iget-object v2, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v5, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v6, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v6}, Lcom/tndev/funnyframes/EditActivity;->u(Lcom/tndev/funnyframes/EditActivity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 535
    float-to-int v3, v3

    float-to-int v4, v4

    const/4 v7, 0x0

    .line 534
    invoke-static {v5, v6, v3, v4, v7}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromUri(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 538
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 542
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 545
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 546
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 547
    iget-object v3, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v3, v3, Lcom/tndev/funnyframes/EditActivity;->j:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 548
    iget-object v3, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v4}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 551
    iget-object v2, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v2}, Lcom/tndev/funnyframes/EditActivity;->r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 552
    iget-object v2, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 553
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 556
    iget-object v2, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v3, p0, Lhc;->b:Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v3}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFileFullSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 559
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 560
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 561
    iget-object v3, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 565
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 566
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 567
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kidsframehd_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 571
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 570
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    const-string v2, "FunnyFrames"

    const-string v3, "Funny Frames"

    .line 574
    iget-object v4, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v4}, Lcom/tndev/funnyframes/EditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 573
    invoke-static {v0, v2, v1, v3, v4}, Lcom/tndev/common/utils/ImageLoaderUtils;->saveToGallery(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 579
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 581
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    const-class v3, Lcom/tndev/funnyframes/ResultActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    const-string v2, "IMAGE_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->startActivity(Landroid/content/Intent;)V

    .line 585
    iget-object v0, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_157} :catch_158

    .line 590
    :goto_157
    return-void

    .line 586
    :catch_158
    move-exception v0

    .line 587
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 588
    iget-object v1, p0, Lhc;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->handleException(Ljava/lang/Exception;)V

    goto :goto_157
.end method
