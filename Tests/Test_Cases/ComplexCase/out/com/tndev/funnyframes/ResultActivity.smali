.class public Lcom/tndev/funnyframes/ResultActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/Bitmap;

.field c:I

.field d:I

.field e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

.field f:Z

.field g:Landroid/content/SharedPreferences;

.field h:Landroid/view/View$OnClickListener;

.field private i:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    .line 244
    new-instance v0, Lis;

    invoke-direct {v0, p0}, Lis;-><init>(Lcom/tndev/funnyframes/ResultActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->h:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 147
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFileFullSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    .line 149
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 153
    :goto_f
    return-void

    .line 150
    :catch_10
    move-exception v0

    .line 151
    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->handleException(Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/ResultActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->b()V

    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 182
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 183
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->a()V

    .line 186
    :cond_b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 187
    const/high16 v0, 0x42b4

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 188
    iget-object v7, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    .line 189
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    .line 191
    iget-object v2, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 190
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    .line 192
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 196
    return-void
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/ResultActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->c()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tndev/funnyframes/ResultActivity;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v1, "Share image using"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method public static synthetic c(Lcom/tndev/funnyframes/ResultActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 215
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 216
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->a()V

    .line 220
    :cond_b
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_28

    .line 222
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 223
    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 225
    const-string v0, "Image was set as wallpaper."

    .line 226
    const/4 v1, 0x0

    .line 225
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    :goto_27
    return-void

    .line 230
    :cond_28
    const-string v0, "Cannot set image as wallpaper as your device does not support."

    .line 231
    const/4 v1, 0x0

    .line 228
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_27

    .line 234
    :catch_33
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 239
    const-string v0, "Cannot set image as wallpaper as your device does not support."

    .line 237
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 160
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    iput-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->b:Landroid/graphics/Bitmap;

    .line 164
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 165
    return-void
.end method

.method protected handleException(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const v0, 0x7f050003

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Liv;

    invoke-direct {v1, p0}, Liv;-><init>(Lcom/tndev/funnyframes/ResultActivity;)V

    .line 278
    const/4 v2, 0x0

    .line 272
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 281
    :goto_13
    return-void

    .line 279
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/16 v1, 0x400

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    :try_start_7
    const-string v0, "a92c49a4"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_103

    .line 69
    :goto_c
    invoke-virtual {p0}, Lcom/tndev/funnyframes/ResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 72
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->g:Landroid/content/SharedPreferences;

    .line 76
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    .line 78
    iget-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    if-nez v0, :cond_3c

    .line 80
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->g:Landroid/content/SharedPreferences;

    const-string v1, "PREMIUM_UPGRADED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    .line 83
    :cond_3c
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 84
    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 86
    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 90
    iget-object v1, p0, Lcom/tndev/funnyframes/ResultActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->e:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    .line 94
    invoke-virtual {p0}, Lcom/tndev/funnyframes/ResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IMAGE_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/tndev/funnyframes/ResultActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tndev/funnyframes/ResultActivity;->c:I

    .line 100
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tndev/funnyframes/ResultActivity;->d:I

    .line 102
    invoke-direct {p0}, Lcom/tndev/funnyframes/ResultActivity;->a()V

    .line 104
    iget-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    if-nez v0, :cond_c7

    .line 106
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090002

    .line 107
    new-array v2, v5, [I

    fill-array-data v2, :array_106

    .line 108
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 106
    invoke-static {v0, p0, v1, v2, v3}, Lcom/tndev/common/utils/AdsUtils;->setupAds(Ljava/lang/String;Landroid/app/Activity;I[I[I)Lcom/google/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->i:Lcom/google/ads/AdView;

    .line 109
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->i:Lcom/google/ads/AdView;

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->loadAd(Lcom/google/ads/AdView;)V

    .line 112
    :cond_c7
    const-string v0, ""

    .line 113
    iget-boolean v0, p0, Lcom/tndev/funnyframes/ResultActivity;->f:Z

    if-eqz v0, :cond_fb

    .line 114
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_d4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    const-string v2, "NUMOFLAUNCH"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 121
    const-string v3, "RATE_IT"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 122
    if-nez v3, :cond_fa

    .line 123
    if-le v2, v5, :cond_fa

    .line 125
    const-string v2, "Rate it!"

    new-instance v3, Lit;

    invoke-direct {v3, p0, v0}, Lit;-><init>(Lcom/tndev/funnyframes/ResultActivity;Landroid/content/SharedPreferences;)V

    .line 132
    const-string v4, "Not Now"

    new-instance v5, Liu;

    invoke-direct {v5, p0, v0}, Liu;-><init>(Lcom/tndev/funnyframes/ResultActivity;Landroid/content/SharedPreferences;)V

    move-object v0, p0

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    :cond_fa
    return-void

    .line 116
    :cond_fb
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/ResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d4

    .line 66
    :catch_103
    move-exception v0

    goto/16 :goto_c

    .line 107
    :array_106
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->i:Lcom/google/ads/AdView;

    if-eqz v0, :cond_f

    .line 172
    iget-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->i:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/funnyframes/ResultActivity;->i:Lcom/google/ads/AdView;

    .line 175
    :cond_f
    return-void
.end method
