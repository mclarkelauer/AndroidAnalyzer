.class public Lhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kidsframehd_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1168
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1169
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1168
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :try_start_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/temp/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1175
    const-string v2, "tmp_photoframes_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1178
    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1179
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1180
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1183
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1186
    iget-object v0, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    .line 1187
    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFileFullSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V

    .line 1190
    iget-object v0, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->o(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1191
    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->p(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1192
    iget-object v4, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v4}, Lcom/tndev/funnyframes/EditActivity;->o(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1196
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v0, v4, v5}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFile(Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1199
    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v4}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1200
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1203
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1206
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1207
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v0, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1210
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1211
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1212
    iget-object v6, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v6}, Lcom/tndev/funnyframes/EditActivity;->n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1214
    const-string v4, "FunnyFrames"

    const-string v5, "Funny Frames"

    .line 1215
    iget-object v6, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v6}, Lcom/tndev/funnyframes/EditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1214
    invoke-static {v3, v4, v1, v5, v6}, Lcom/tndev/common/utils/ImageLoaderUtils;->saveToGallery(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 1218
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1221
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1224
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1226
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    const-class v4, Lcom/tndev/funnyframes/ResultActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1227
    const-string v3, "IMAGE_DATA"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    iget-object v1, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v1, v2}, Lcom/tndev/funnyframes/EditActivity;->startActivity(Landroid/content/Intent;)V

    .line 1230
    iget-object v1, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1233
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_142} :catch_143

    .line 1239
    :goto_142
    return-void

    .line 1235
    :catch_143
    move-exception v0

    .line 1236
    iget-object v1, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1237
    iget-object v1, p0, Lhp;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-virtual {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->handleException(Ljava/lang/Exception;)V

    goto :goto_142
.end method
