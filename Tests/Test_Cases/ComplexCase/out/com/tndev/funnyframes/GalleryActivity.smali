.class public Lcom/tndev/funnyframes/GalleryActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field public b:Landroid/os/Handler;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/LinearLayout;

.field e:Z

.field f:Landroid/content/SharedPreferences;

.field private g:I

.field private h:[Landroid/graphics/Bitmap;

.field private i:[Ljava/lang/String;

.field private j:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->e:Z

    .line 37
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lia;

    invoke-direct {v1, p0}, Lia;-><init>(Lcom/tndev/funnyframes/GalleryActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 151
    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/GalleryActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/tndev/funnyframes/GalleryActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/GalleryActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/tndev/funnyframes/GalleryActivity;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/GalleryActivity;[Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tndev/funnyframes/GalleryActivity;->h:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/GalleryActivity;[Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tndev/funnyframes/GalleryActivity;->i:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/GalleryActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->g:I

    return v0
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    .line 158
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    invoke-virtual {p0}, Lcom/tndev/funnyframes/GalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    const/4 v0, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/tndev/funnyframes/GalleryActivity;->h:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v0, v2, :cond_22

    .line 189
    return-void

    .line 167
    :cond_22
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v3, p0, Lcom/tndev/funnyframes/GalleryActivity;->h:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x2

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 172
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 174
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_63

    .line 175
    iget-object v3, p0, Lcom/tndev/funnyframes/GalleryActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    :goto_58
    new-instance v3, Lib;

    invoke-direct {v3, p0}, Lib;-><init>(Lcom/tndev/funnyframes/GalleryActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 177
    :cond_63
    iget-object v3, p0, Lcom/tndev/funnyframes/GalleryActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_58
.end method

.method public static synthetic c(Lcom/tndev/funnyframes/GalleryActivity;)[Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->h:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic d(Lcom/tndev/funnyframes/GalleryActivity;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->i:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/tndev/funnyframes/GalleryActivity;->a()V

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    :try_start_3
    const-string v0, "a92c49a4"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_81

    .line 65
    :goto_8
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/GalleryActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->f:Landroid/content/SharedPreferences;

    .line 69
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->e:Z

    .line 71
    iget-boolean v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->e:Z

    if-nez v0, :cond_32

    .line 73
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->f:Landroid/content/SharedPreferences;

    const-string v1, "PREMIUM_UPGRADED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->e:Z

    .line 76
    :cond_32
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->c:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->d:Landroid/widget/LinearLayout;

    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->a:Landroid/app/ProgressDialog;

    .line 81
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lhz;

    invoke-direct {v1, p0}, Lhz;-><init>(Lcom/tndev/funnyframes/GalleryActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->b:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/tndev/funnyframes/GalleryActivity;->a()V

    .line 93
    iget-boolean v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->e:Z

    if-nez v0, :cond_80

    .line 95
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090002

    .line 96
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_84

    .line 97
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 95
    invoke-static {v0, p0, v1, v2, v3}, Lcom/tndev/common/utils/AdsUtils;->setupAds(Ljava/lang/String;Landroid/app/Activity;I[I[I)Lcom/google/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->j:Lcom/google/ads/AdView;

    .line 98
    iget-object v0, p0, Lcom/tndev/funnyframes/GalleryActivity;->j:Lcom/google/ads/AdView;

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->loadAd(Lcom/google/ads/AdView;)V

    .line 100
    :cond_80
    return-void

    .line 62
    :catch_81
    move-exception v0

    goto :goto_8

    .line 96
    nop

    :array_84
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method
