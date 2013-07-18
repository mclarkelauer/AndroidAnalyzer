.class public Lcom/tndev/funnyframes/MenuActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field public d:Z

.field public e:Lcom/tndev/billing/util/IabHelper;

.field public f:Landroid/content/SharedPreferences;

.field g:Landroid/view/View$OnClickListener;

.field h:Landroid/os/Handler$Callback;

.field public i:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

.field j:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field k:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/os/Handler;

.field private o:Lcom/google/ads/AdView;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput v1, p0, Lcom/tndev/funnyframes/MenuActivity;->b:I

    .line 72
    iput v1, p0, Lcom/tndev/funnyframes/MenuActivity;->c:I

    .line 77
    iput-boolean v1, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    .line 82
    iput-boolean v1, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    .line 84
    iput-boolean v1, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    .line 406
    new-instance v0, Lig;

    invoke-direct {v0, p0}, Lig;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    .line 431
    new-instance v0, Lih;

    invoke-direct {v0, p0}, Lih;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->h:Landroid/os/Handler$Callback;

    .line 450
    new-instance v0, Lii;

    invoke-direct {v0, p0}, Lii;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->i:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 478
    new-instance v0, Lij;

    invoke-direct {v0, p0}, Lij;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->j:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 520
    new-instance v0, Lin;

    invoke-direct {v0, p0}, Lin;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->k:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    .line 55
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 272
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090002

    .line 273
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    .line 274
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 272
    invoke-static {v0, p0, v1, v2, v3}, Lcom/tndev/common/utils/AdsUtils;->setupAds(Ljava/lang/String;Landroid/app/Activity;I[I[I)Lcom/google/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    .line 275
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->loadAd(Lcom/google/ads/AdView;)V

    .line 278
    new-instance v0, Lcom/pad/android/xappad/AdController;

    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {p0, v2}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadNotification()V

    .line 281
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    return-void

    .line 273
    nop

    :array_3e
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/MenuActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/MenuActivity;->b(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/MenuActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    return-void
.end method

.method private a(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 5
    .parameter

    .prologue
    const v1, 0x7f090006

    const/4 v2, 0x4

    .line 366
    const/4 v0, 0x2

    iput v0, p1, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 368
    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 369
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isTwoFrameDownloaded()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 370
    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    .line 375
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-nez v0, :cond_3f

    .line 377
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->a()V

    .line 382
    :cond_3f
    :goto_3f
    return-void

    .line 380
    :cond_40
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3f
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lir;

    invoke-direct {v1, p0}, Lir;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    .line 403
    const/4 v2, 0x0

    .line 398
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 404
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/tndev/billing/util/IabHelper;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_14

    .line 325
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    const-string v1, "remove_ad_id"

    const/16 v2, 0x2711

    iget-object v3, p0, Lcom/tndev/funnyframes/MenuActivity;->j:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/tndev/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 329
    :goto_13
    return-void

    .line 327
    :cond_14
    const-string v0, "There is operation in progress. Please try again."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/MenuActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/MenuActivity;->a(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method private b(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x1

    iput v0, p1, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 391
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tndev/hdframes/model/FrameDownloader;->queueFrame(Lcom/tndev/hdframes/model/FrameInfo;)V

    .line 392
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tndev/funnyframes/EditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public static synthetic c(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->b()V

    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tndev/funnyframes/GalleryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method public static synthetic d(Lcom/tndev/funnyframes/MenuActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    return v0
.end method

.method private e()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 347
    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 348
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/pad/android/xappad/AdNotification;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 352
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/pad/android/xappad/AdReminderNotification;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 356
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/tndev/hdframes/ads/BootReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 359
    return-void
.end method

.method public static synthetic e(Lcom/tndev/funnyframes/MenuActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 543
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method public static synthetic f(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->a()V

    return-void
.end method

.method public static synthetic g(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->f()V

    return-void
.end method

.method public static synthetic h(Lcom/tndev/funnyframes/MenuActivity;)Lcom/google/ads/AdView;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    return-object v0
.end method

.method public static synthetic i(Lcom/tndev/funnyframes/MenuActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->e()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 288
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/hdframes/model/FrameDownloader;->shutdown()V

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 291
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tndev/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 316
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 318
    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const v5, 0x7f090006

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    :try_start_a
    const-string v0, "a92c49a4"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_22e

    .line 98
    :goto_f
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->setContentView(I)V

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    .line 103
    invoke-virtual {p0, v5}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 108
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-nez v0, :cond_45

    .line 110
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    const-string v4, "PREMIUM_UPGRADED"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    .line 112
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-eqz v0, :cond_45

    .line 113
    iput-boolean v2, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    .line 117
    :cond_45
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->l:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->m:Landroid/widget/ProgressBar;

    .line 121
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v0, Landroid/os/Handler;

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->h:Landroid/os/Handler$Callback;

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->n:Landroid/os/Handler;

    .line 129
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    iget-object v4, p0, Lcom/tndev/funnyframes/MenuActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Lcom/tndev/hdframes/model/FrameDownloader;->setHandler(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    const-string v4, "V_121_UPDATED"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 133
    if-nez v0, :cond_f6

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 137
    const-wide/32 v6, 0x1800000

    cmp-long v0, v4, v6

    if-lez v0, :cond_11d

    move v0, v1

    .line 147
    :goto_cd
    if-nez v0, :cond_e7

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tndev/hdframes/model/FrameUtils;->PHOTO_FRAMES_ROOT_FOLDER:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/frames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->deleteDir(Ljava/lang/String;)V

    .line 152
    :cond_e7
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "V_121_UPDATED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    :cond_f6
    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/NetworkUtils;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->a:Z

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_128

    .line 161
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio;

    invoke-direct {v1, p0}, Lio;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    .line 166
    const/4 v2, 0x0

    .line 161
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 266
    :cond_11c
    :goto_11c
    return-void

    .line 140
    :cond_11d
    const-wide/32 v0, 0x1000000

    cmp-long v0, v4, v0

    if-lez v0, :cond_126

    move v0, v2

    .line 143
    goto :goto_cd

    :cond_126
    move v0, v3

    .line 145
    goto :goto_cd

    .line 174
    :cond_128
    :try_start_128
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p0}, Lcom/tndev/funnyframes/MenuActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "frames.dat"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/FileUtils;->readFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/tndev/common/utils/CryptoUtils;->decompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/tndev/funnyframes/MenuActivity;->m:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 187
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tndev/hdframes/model/FrameUtils;->loadFrames(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 192
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isTwoFrameDownloaded()Z

    move-result v0

    if-nez v0, :cond_184

    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->a:Z

    if-nez v0, :cond_184

    .line 193
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->a:Z

    if-nez v0, :cond_184

    .line 194
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lip;

    invoke-direct {v1, p0}, Lip;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    .line 199
    const/4 v2, 0x0

    .line 194
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_17b} :catch_17c

    goto :goto_11c

    .line 232
    :catch_17c
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    invoke-direct {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->a(Ljava/lang/Exception;)V

    goto :goto_11c

    .line 205
    :cond_184
    :try_start_184
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20b

    .line 216
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/MenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isTwoFrameDownloaded()Z

    move-result v0

    if-eqz v0, :cond_1d9

    .line 220
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 222
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/MenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    .line 227
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->q:Z

    if-eqz v0, :cond_1d9

    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->p:Z

    if-eqz v0, :cond_1d9

    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->d:Z

    if-nez v0, :cond_1d9

    .line 228
    invoke-direct {p0}, Lcom/tndev/funnyframes/MenuActivity;->a()V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1d9} :catch_17c

    .line 239
    :cond_1d9
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    const-string v1, "NUMOFLAUNCH"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/tndev/funnyframes/MenuActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NUMOFLAUNCH"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    iget-boolean v0, p0, Lcom/tndev/funnyframes/MenuActivity;->a:Z

    if-eqz v0, :cond_11c

    .line 245
    new-instance v0, Lcom/tndev/billing/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsXS7yryMnCL3OHSxyTumGo01/D4MkOYdr/uytMWOeyzfib0FPyxRfY3rTjEFASe/lqALkb4/pIhYC/j8eEJ0xA1RiUZwskusyMAUkaPBgCoc4sdDi84Kiggk6mmcy9jxcHT3IqD2EgzqDileoJEJjXU1N46v2rvOKRmQUFy7kwJtlB1Bn/RhmoZ3a0fmTg9qduOrCvZPrRLwAcwzcAKFxsSRwo+woivyUAjXsr9P/7YovxOs80MJTEbzcBqsNOvjZf39HxaBqYuHa0+Ua0aGTQ6iO7ulWPpzOj9SB1jwzM/q2201P2qhsoYgI0jIEZ1ukqJG3ntVMSezrnwyHw1cdwIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/tndev/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    .line 252
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    new-instance v1, Liq;

    invoke-direct {v1, p0}, Liq;-><init>(Lcom/tndev/funnyframes/MenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/tndev/billing/util/IabHelper;->startSetup(Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    goto/16 :goto_11c

    .line 206
    :cond_20b
    :try_start_20b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    .line 207
    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameUtils;->isFrameDownloaded(Lcom/tndev/hdframes/model/FrameInfo;)Z

    move-result v2

    if-nez v2, :cond_229

    .line 208
    iget v2, p0, Lcom/tndev/funnyframes/MenuActivity;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tndev/funnyframes/MenuActivity;->b:I

    .line 209
    const/4 v2, 0x1

    iput v2, v0, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 210
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tndev/hdframes/model/FrameDownloader;->queueFrame(Lcom/tndev/hdframes/model/FrameInfo;)V

    goto/16 :goto_18e

    .line 212
    :cond_229
    const/4 v2, 0x2

    iput v2, v0, Lcom/tndev/hdframes/model/FrameInfo;->status:I
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_22c} :catch_17c

    goto/16 :goto_18e

    .line 95
    :catch_22e
    move-exception v0

    goto/16 :goto_f
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 297
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tndev/hdframes/model/FrameDownloader;->setHandler(Landroid/os/Handler;)V

    .line 299
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    if-eqz v0, :cond_16

    .line 300
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 301
    iput-object v1, p0, Lcom/tndev/funnyframes/MenuActivity;->o:Lcom/google/ads/AdView;

    .line 304
    :cond_16
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    if-eqz v0, :cond_1f

    .line 305
    iget-object v0, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/tndev/billing/util/IabHelper;->dispose()V

    .line 306
    :cond_1f
    iput-object v1, p0, Lcom/tndev/funnyframes/MenuActivity;->e:Lcom/tndev/billing/util/IabHelper;

    .line 307
    return-void
.end method
