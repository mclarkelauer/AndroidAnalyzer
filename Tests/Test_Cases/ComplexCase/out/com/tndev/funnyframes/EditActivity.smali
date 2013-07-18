.class public Lcom/tndev/funnyframes/EditActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:I

.field private C:Landroid/graphics/Matrix;

.field private D:Lhx;

.field private E:Lhy;

.field private F:Landroid/hardware/Camera;

.field private G:Lcom/tndev/funnyframes/CameraPreview;

.field private H:Lnet/londatiga/android/QuickAction;

.field private I:Lcom/google/ads/AdView;

.field private J:Landroid/view/View$OnTouchListener;

.field private K:Landroid/hardware/Camera$PictureCallback;

.field public a:Landroid/graphics/Matrix;

.field public b:I

.field public c:I

.field public d:Landroid/graphics/PointF;

.field public e:Landroid/graphics/PointF;

.field public f:F

.field public g:Landroid/app/ProgressDialog;

.field public h:Landroid/os/Handler;

.field public i:Lnet/londatiga/android/QuickAction;

.field public j:Landroid/graphics/ColorFilter;

.field public k:Ljava/util/Timer;

.field public l:Z

.field m:Landroid/content/SharedPreferences;

.field n:Landroid/os/Handler$Callback;

.field o:Landroid/widget/AdapterView$OnItemClickListener;

.field p:Landroid/view/View$OnClickListener;

.field private q:Landroid/widget/ListView;

.field private r:Lcom/tndev/hdframes/adapter/FramesListAdapter;

.field private s:Landroid/os/Handler;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/net/Uri;

.field private v:Landroid/graphics/Bitmap;

.field private w:I

.field private x:I

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/tndev/funnyframes/EditActivity;->B:I

    .line 131
    sget-object v0, Lhx;->a:Lhx;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->D:Lhx;

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->d:Landroid/graphics/PointF;

    .line 135
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->e:Landroid/graphics/PointF;

    .line 136
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tndev/funnyframes/EditActivity;->f:F

    .line 145
    sget-object v0, Lhy;->a:Lhy;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    .line 993
    new-instance v0, Lha;

    invoke-direct {v0, p0}, Lha;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->n:Landroid/os/Handler$Callback;

    .line 1010
    new-instance v0, Lhj;

    invoke-direct {v0, p0}, Lhj;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1056
    new-instance v0, Lhn;

    invoke-direct {v0, p0}, Lhn;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    .line 1112
    new-instance v0, Lho;

    invoke-direct {v0, p0}, Lho;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->J:Landroid/view/View$OnTouchListener;

    .line 1162
    new-instance v0, Lhp;

    invoke-direct {v0, p0}, Lhp;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->K:Landroid/hardware/Camera$PictureCallback;

    .line 79
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 963
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 964
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 965
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Landroid/view/MotionEvent;)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 962
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/EditActivity;->a(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/tndev/funnyframes/EditActivity;->B:I

    return v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 417
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 420
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 423
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 424
    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    .line 970
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 971
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 972
    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 973
    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/tndev/funnyframes/EditActivity;->B:I

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/tndev/funnyframes/EditActivity;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/EditActivity;->c(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Lhx;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tndev/funnyframes/EditActivity;->D:Lhx;

    return-void
.end method

.method public static synthetic a(Lcom/tndev/funnyframes/EditActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/EditActivity;->a(Z)V

    return-void
.end method

.method private a(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 845
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 846
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    .line 850
    :cond_12
    invoke-static {p1}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tndev/funnyframes/EditActivity;->w:I

    iget v2, p0, Lcom/tndev/funnyframes/EditActivity;->x:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/ImageLoaderUtils;->loadFromFile(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    .line 851
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    .line 856
    :goto_28
    return-void

    .line 853
    :catch_29
    move-exception v0

    .line 854
    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->handleException(Ljava/lang/Exception;)V

    goto :goto_28
.end method

.method private a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->b:Lhy;

    if-ne v0, v1, :cond_7

    .line 803
    :cond_6
    :goto_6
    return-void

    .line 794
    :cond_7
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 797
    if-eqz p1, :cond_26

    .line 798
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    const/high16 v1, -0x3f60

    iget v2, p0, Lcom/tndev/funnyframes/EditActivity;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/tndev/funnyframes/EditActivity;->c:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 802
    :goto_1e
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_6

    .line 800
    :cond_26
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    const/high16 v1, 0x40a0

    iget v2, p0, Lcom/tndev/funnyframes/EditActivity;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/tndev/funnyframes/EditActivity;->c:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1e
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    .line 430
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhs;

    invoke-direct {v1, p0}, Lhs;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-static {p0, v0, v1, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 457
    :goto_14
    return-void

    .line 439
    :cond_15
    const-string v0, ""

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->g:Landroid/app/ProgressDialog;

    .line 442
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_35

    .line 444
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    iput-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    .line 448
    :cond_35
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_45

    .line 450
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    iput-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    .line 454
    :cond_45
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 456
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->K:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v3, v3, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_14
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic b(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 914
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method private b(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 915
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    .line 932
    :cond_d
    :goto_d
    return-void

    .line 919
    :cond_e
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/adapter/FramesListAdapter;

    .line 921
    iput v2, p1, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 922
    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 924
    if-ltz v1, :cond_2e

    .line 925
    invoke-virtual {v0, v1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->getItem(I)Lcom/tndev/hdframes/model/FrameInfo;

    move-result-object v1

    .line 926
    iput v2, v1, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 931
    :goto_2a
    invoke-virtual {v0}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->notifyDataSetChanged()V

    goto :goto_d

    .line 928
    :cond_2e
    invoke-virtual {v0, p1}, Lcom/tndev/hdframes/adapter/FramesListAdapter;->add(Lcom/tndev/hdframes/model/FrameInfo;)V

    goto :goto_2a
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    .line 463
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lht;

    invoke-direct {v1, p0}, Lht;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-static {p0, v0, v1, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 593
    :goto_14
    return-void

    .line 472
    :cond_15
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    if-nez v0, :cond_29

    .line 473
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhb;

    invoke-direct {v1, p0}, Lhb;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-static {p0, v0, v1, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_14

    .line 482
    :cond_29
    const-string v0, ""

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->g:Landroid/app/ProgressDialog;

    .line 485
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 487
    iput-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    .line 489
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 491
    iput-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    .line 493
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/tndev/funnyframes/EditActivity;->B:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    .line 497
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tndev/hdframes/model/FrameDownloader;->setHandler(Landroid/os/Handler;)V

    .line 499
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 501
    new-instance v1, Ljava/lang/Thread;

    .line 502
    new-instance v2, Lhc;

    invoke-direct {v2, p0, v0}, Lhc;-><init>(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V

    .line 501
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 592
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public static synthetic c(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->k()V

    return-void
.end method

.method public static synthetic c(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/hdframes/model/FrameInfo;)V

    return-void
.end method

.method private c(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter

    .prologue
    .line 938
    const/4 v0, 0x1

    iput v0, p1, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    .line 941
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tndev/hdframes/model/FrameDownloader;->queueFrame(Lcom/tndev/hdframes/model/FrameInfo;)V

    .line 942
    return-void
.end method

.method public static synthetic d(Lcom/tndev/funnyframes/EditActivity;)Lhy;
    .registers 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 600
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    .line 602
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 603
    iput-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    .line 605
    :cond_12
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    :try_start_18
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_5b

    .line 618
    :try_start_1e
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 619
    const/16 v1, 0x640

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 620
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 621
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 622
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3a} :catch_66

    .line 629
    new-instance v0, Lcom/tndev/funnyframes/CameraPreview;

    invoke-direct {v0, p0}, Lcom/tndev/funnyframes/CameraPreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->G:Lcom/tndev/funnyframes/CameraPreview;

    .line 630
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->G:Lcom/tndev/funnyframes/CameraPreview;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/tndev/funnyframes/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 631
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 632
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->G:Lcom/tndev/funnyframes/CameraPreview;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 635
    sget-object v0, Lhy;->b:Lhy;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    .line 636
    :goto_5a
    return-void

    .line 610
    :catch_5b
    move-exception v0

    .line 611
    const-string v0, "Can not connect to camera! Please try again."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5a

    .line 623
    :catch_66
    move-exception v0

    .line 624
    const-string v0, "Can not connect to camera! Please try again."

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5a
.end method

.method private e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_9

    .line 673
    :goto_8
    return-void

    .line 647
    :cond_9
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->G:Lcom/tndev/funnyframes/CameraPreview;

    invoke-virtual {v0, v3}, Lcom/tndev/funnyframes/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 648
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    if-eqz v0, :cond_19

    .line 649
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 650
    iput-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    .line 656
    :cond_19
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 657
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 660
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->j()V

    .line 666
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 667
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 669
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 672
    sget-object v0, Lhy;->a:Lhy;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    goto :goto_8
.end method

.method public static synthetic e(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->e()V

    return-void
.end method

.method public static synthetic f(Lcom/tndev/funnyframes/EditActivity;)Lnet/londatiga/android/QuickAction;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->H:Lnet/londatiga/android/QuickAction;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->b:Lhy;

    if-ne v0, v1, :cond_7

    .line 690
    :goto_6
    return-void

    .line 681
    :cond_7
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string v1, "Complete action using"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tndev/funnyframes/EditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method private g()V
    .registers 7

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->b:Lhy;

    if-ne v0, v1, :cond_7

    .line 707
    :goto_6
    return-void

    .line 698
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/temp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tmp_photoframes_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->u:Landroid/net/Uri;

    .line 703
    const-string v1, "output"

    iget-object v2, p0, Lcom/tndev/funnyframes/EditActivity;->u:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 705
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 706
    const-string v1, "Complete action using"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tndev/funnyframes/EditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6
.end method

.method public static synthetic g(Lcom/tndev/funnyframes/EditActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->l()Z

    move-result v0

    return v0
.end method

.method private h()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 712
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 713
    new-instance v0, Lnet/londatiga/android/QuickAction;

    invoke-direct {v0, p0, v4}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->H:Lnet/londatiga/android/QuickAction;

    .line 715
    new-instance v0, Lnet/londatiga/android/ActionItem;

    const-string v1, "Gallery"

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 716
    new-instance v1, Lnet/londatiga/android/ActionItem;

    const/4 v2, 0x2

    const-string v3, "Camera"

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v2, p0, Lcom/tndev/funnyframes/EditActivity;->H:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v2, v0}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 719
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->H:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 721
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->H:Lnet/londatiga/android/QuickAction;

    new-instance v1, Lhd;

    invoke-direct {v1, p0}, Lhd;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 735
    :cond_47
    return-void
.end method

.method public static synthetic h(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->f()V

    return-void
.end method

.method private i()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 740
    new-instance v0, Lnet/londatiga/android/QuickAction;

    invoke-direct {v0, p0, v4}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    .line 742
    new-instance v0, Lnet/londatiga/android/ActionItem;

    const-string v1, "Black & White"

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 743
    new-instance v1, Lnet/londatiga/android/ActionItem;

    const/4 v2, 0x2

    const-string v3, "Sepia"

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 744
    new-instance v2, Lnet/londatiga/android/ActionItem;

    const/4 v3, 0x3

    const-string v4, "Clear effect"

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lnet/londatiga/android/ActionItem;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 746
    iget-object v3, p0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v3, v0}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 747
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 748
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, v2}, Lnet/londatiga/android/QuickAction;->addActionItem(Lnet/londatiga/android/ActionItem;)V

    .line 750
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    new-instance v1, Lhe;

    invoke-direct {v1, p0}, Lhe;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V

    .line 784
    return-void
.end method

.method public static synthetic i(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->d()V

    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->u:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 811
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 813
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lhf;

    invoke-direct {v1, p0}, Lhf;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 834
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    :cond_17
    return-void
.end method

.method public static synthetic j(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->c()V

    return-void
.end method

.method private k()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x1f4

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 861
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 863
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 864
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 865
    new-instance v1, Lhg;

    invoke-direct {v1, p0}, Lhg;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 880
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 909
    :goto_22
    return-void

    .line 883
    :cond_23
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 884
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 885
    new-instance v1, Lhh;

    invoke-direct {v1, p0}, Lhh;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 907
    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_22
.end method

.method public static synthetic k(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->b()V

    return-void
.end method

.method public static synthetic l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private l()Z
    .registers 2

    .prologue
    .line 948
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_c

    .line 951
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 953
    const/4 v0, 0x1

    .line 958
    :goto_a
    return v0

    .line 955
    :catch_b
    move-exception v0

    .line 958
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static synthetic m(Lcom/tndev/funnyframes/EditActivity;)Lhx;
    .registers 2
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->D:Lhx;

    return-object v0
.end method

.method public static synthetic n(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic o(Lcom/tndev/funnyframes/EditActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/tndev/funnyframes/EditActivity;->x:I

    return v0
.end method

.method public static synthetic p(Lcom/tndev/funnyframes/EditActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/tndev/funnyframes/EditActivity;->w:I

    return v0
.end method

.method public static synthetic q(Lcom/tndev/funnyframes/EditActivity;)Lcom/google/ads/AdView;
    .registers 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    return-object v0
.end method

.method public static synthetic r(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic s(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic t(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic u(Lcom/tndev/funnyframes/EditActivity;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->u:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic v(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->g()V

    return-void
.end method

.method public static synthetic w(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->t:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    iput-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->v:Landroid/graphics/Bitmap;

    .line 358
    :cond_11
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_21

    .line 361
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    iput-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->z:Landroid/graphics/Bitmap;

    .line 365
    :cond_21
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 368
    return-void
.end method

.method public handleException(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 979
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 982
    const v0, 0x7f050003

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhi;

    invoke-direct {v1, p0}, Lhi;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    .line 987
    const/4 v2, 0x0

    .line 982
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_13} :catch_14

    .line 990
    :goto_13
    return-void

    .line 988
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 327
    packed-switch p1, :pswitch_data_22

    .line 346
    :cond_4
    :goto_4
    return-void

    .line 329
    :pswitch_5
    if-ne p2, v0, :cond_14

    .line 332
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->a()V

    .line 334
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->u:Landroid/net/Uri;

    .line 335
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->j()V

    goto :goto_4

    .line 337
    :cond_14
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 341
    :pswitch_1b
    if-ne p2, v0, :cond_4

    .line 342
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->j()V

    goto :goto_4

    .line 327
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f090008

    const/16 v1, 0x400

    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    :try_start_b
    const-string v0, "a92c49a4"

    invoke-static {p0, v0}, Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1a6

    .line 188
    :goto_10
    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 191
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->setContentView(I)V

    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->m:Landroid/content/SharedPreferences;

    .line 195
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    .line 197
    iget-boolean v0, p0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    if-nez v0, :cond_40

    .line 199
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->m:Landroid/content/SharedPreferences;

    const-string v1, "PREMIUM_UPGRADED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    .line 202
    :cond_40
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    .line 205
    new-instance v0, Lcom/tndev/hdframes/adapter/FramesListAdapter;

    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/tndev/hdframes/model/FrameUtils;->getInstance()Lcom/tndev/hdframes/model/FrameUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/tndev/hdframes/model/FrameUtils;->frames:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tndev/hdframes/adapter/FramesListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->r:Lcom/tndev/hdframes/adapter/FramesListAdapter;

    .line 206
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->r:Lcom/tndev/hdframes/adapter/FramesListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->t:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->t:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0, v6}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    .line 224
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->y:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->J:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->A:Landroid/widget/ImageView;

    .line 229
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->n:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->s:Landroid/os/Handler;

    .line 230
    invoke-static {}, Lcom/tndev/hdframes/model/FrameDownloader;->get()Lcom/tndev/hdframes/model/FrameDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/tndev/funnyframes/EditActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tndev/hdframes/model/FrameDownloader;->setHandler(Landroid/os/Handler;)V

    .line 233
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->l()Z

    move-result v0

    if-nez v0, :cond_109

    .line 235
    invoke-virtual {p0, v6}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_109
    invoke-virtual {p0}, Lcom/tndev/funnyframes/EditActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 243
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tndev/funnyframes/EditActivity;->w:I

    .line 244
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tndev/funnyframes/EditActivity;->x:I

    .line 247
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->C:Landroid/graphics/Matrix;

    .line 248
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    .line 251
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->h()V

    .line 253
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->i()V

    .line 255
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    .line 257
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lhq;

    invoke-direct {v1, p0}, Lhq;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->h:Landroid/os/Handler;

    .line 288
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->q:Landroid/widget/ListView;

    new-instance v1, Lhr;

    invoke-direct {v1, p0}, Lhr;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-boolean v0, p0, Lcom/tndev/funnyframes/EditActivity;->l:Z

    if-nez v0, :cond_182

    .line 305
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090002

    .line 306
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1aa

    .line 307
    new-array v3, v3, [I

    .line 305
    invoke-static {v0, p0, v1, v2, v3}, Lcom/tndev/common/utils/AdsUtils;->setupAds(Ljava/lang/String;Landroid/app/Activity;I[I[I)Lcom/google/ads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    .line 308
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    invoke-static {v0}, Lcom/tndev/common/utils/AdsUtils;->loadAd(Lcom/google/ads/AdView;)V

    .line 311
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;

    invoke-direct {v1, p0}, Lcom/tndev/funnyframes/EditActivity$HideAdsTask;-><init>(Lcom/tndev/funnyframes/EditActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 314
    :cond_182
    const-string v0, "PhotoFrames"

    invoke-virtual {p0, v0, v4}, Lcom/tndev/funnyframes/EditActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 315
    const-string v1, "ShowHelp"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 316
    if-ne v1, v5, :cond_1a5

    .line 318
    new-instance v1, Lcom/tndev/funnyframes/HelpDialog;

    invoke-direct {v1, p0}, Lcom/tndev/funnyframes/HelpDialog;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v1}, Lcom/tndev/funnyframes/HelpDialog;->show()V

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowHelp"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    :cond_1a5
    return-void

    .line 185
    :catch_1a6
    move-exception v0

    goto/16 :goto_10

    .line 306
    nop

    :array_1aa
    .array-data 0x4
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 408
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    if-eqz v0, :cond_f

    .line 409
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->I:Lcom/google/ads/AdView;

    .line 412
    :cond_f
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 386
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_b

    .line 402
    :goto_a
    return-void

    .line 390
    :cond_b
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->G:Lcom/tndev/funnyframes/CameraPreview;

    invoke-virtual {v0, v2}, Lcom/tndev/funnyframes/CameraPreview;->setCamera(Landroid/hardware/Camera;)V

    .line 392
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    if-eqz v0, :cond_20

    .line 393
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 394
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 395
    iput-object v2, p0, Lcom/tndev/funnyframes/EditActivity;->F:Landroid/hardware/Camera;

    .line 400
    :cond_20
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/EditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 374
    iget-object v0, p0, Lcom/tndev/funnyframes/EditActivity;->E:Lhy;

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_a

    .line 380
    :goto_9
    return-void

    .line 379
    :cond_a
    invoke-direct {p0}, Lcom/tndev/funnyframes/EditActivity;->d()V

    goto :goto_9
.end method
