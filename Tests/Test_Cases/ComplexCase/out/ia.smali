.class public Lia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 112
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v6

    .line 113
    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 115
    const-string v0, "_id"

    .line 117
    const-string v3, "bucket_display_name= ?"

    .line 119
    new-array v4, v1, [Ljava/lang/String;

    const-string v0, "FunnyFrames"

    aput-object v0, v4, v6

    .line 121
    iget-object v0, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 124
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 126
    iget-object v0, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v0, v3}, Lcom/tndev/funnyframes/GalleryActivity;->a(Lcom/tndev/funnyframes/GalleryActivity;I)V

    .line 127
    iget-object v0, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    iget-object v3, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/GalleryActivity;->b(Lcom/tndev/funnyframes/GalleryActivity;)I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Lcom/tndev/funnyframes/GalleryActivity;->a(Lcom/tndev/funnyframes/GalleryActivity;[Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v0, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    iget-object v3, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/GalleryActivity;->b(Lcom/tndev/funnyframes/GalleryActivity;)I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tndev/funnyframes/GalleryActivity;->a(Lcom/tndev/funnyframes/GalleryActivity;[Ljava/lang/String;)V

    move v0, v6

    .line 130
    :goto_4f
    iget-object v3, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/GalleryActivity;->b(Lcom/tndev/funnyframes/GalleryActivity;)I

    move-result v3

    if-lt v0, v3, :cond_62

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    iget-object v0, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/GalleryActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void

    .line 131
    :cond_62
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 132
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 135
    const-string v4, "_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 137
    iget-object v5, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v5}, Lcom/tndev/funnyframes/GalleryActivity;->c(Lcom/tndev/funnyframes/GalleryActivity;)[Landroid/graphics/Bitmap;

    move-result-object v5

    .line 138
    iget-object v7, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-virtual {v7}, Lcom/tndev/funnyframes/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    int-to-long v8, v3

    .line 139
    const/4 v3, 0x3

    const/4 v10, 0x0

    .line 137
    invoke-static {v7, v8, v9, v3, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v5, v0

    .line 141
    iget-object v3, p0, Lia;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/GalleryActivity;->d(Lcom/tndev/funnyframes/GalleryActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f
.end method
