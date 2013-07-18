.class public Lcom/tndev/custom/coverflow/CoverFlowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tndev/custom/coverflow/CoverFlowView$DataSource;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tndev/custom/coverflow/CoverFlowView$Listener;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/tndev/custom/coverflow/CoverFlowItem;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tndev/custom/coverflow/CoverFlowItem;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/graphics/Bitmap;

.field i:I

.field public j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

.field k:Landroid/view/ViewGroup;

.field public l:I

.field public m:I

.field n:I

.field o:I

.field public p:Lcom/tndev/custom/coverflow/CoverFlowItem;

.field q:I

.field r:I

.field s:Z

.field t:F

.field u:F

.field v:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$Config;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    .line 59
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 60
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    .line 87
    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$Config;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    .line 59
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 60
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    .line 82
    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$Config;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    .line 59
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 60
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    .line 77
    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a()V

    .line 78
    return-void
.end method


# virtual methods
.method a(I)Lcom/tndev/custom/coverflow/CoverFlowItem;
    .registers 4
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->b()Lcom/tndev/custom/coverflow/CoverFlowItem;

    move-result-object v0

    .line 131
    if-nez v0, :cond_2a

    .line 132
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;-><init>(Landroid/content/Context;)V

    .line 133
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->IMAGE_SCALE_X:F

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setScaleX(F)V

    .line 135
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->IMAGE_SCALE_Y:F

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setScaleY(F)V

    .line 136
    new-instance v1, Lgg;

    invoke-direct {v1, p0}, Lgg;-><init>(Lcom/tndev/custom/coverflow/CoverFlowView;)V

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    :cond_2a
    invoke-virtual {v0, p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setNumber(I)V

    .line 144
    return-object v0
.end method

.method a()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 97
    new-instance v0, Lge;

    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lge;-><init>(Lcom/tndev/custom/coverflow/CoverFlowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    .line 105
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    new-instance v1, Lgf;

    invoke-direct {v1, p0}, Lgf;-><init>(Lcom/tndev/custom/coverflow/CoverFlowView;)V

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v1, v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    .line 114
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget-boolean v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->HORIZONTAL_SCROLLBAR_ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    .line 116
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget-boolean v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->FADING_EDGES_ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v1, v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    .line 125
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method a(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    :goto_0
    if-le p2, p3, :cond_3

    .line 257
    return-void

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 255
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 253
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V
    .registers 6
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    .line 149
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 150
    if-eqz v0, :cond_2c

    .line 151
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 152
    if-eqz v1, :cond_2b

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    .line 153
    invoke-virtual {p1, v0, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setImageBitmap(Landroid/graphics/Bitmap;IF)V

    .line 160
    :cond_2b
    :goto_2b
    return-void

    .line 156
    :cond_2c
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->h:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->i:I

    .line 157
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    .line 156
    invoke-virtual {p1, v0, v2, v3}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setImageBitmap(Landroid/graphics/Bitmap;IF)V

    .line 158
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$DataSource;

    invoke-interface {v0, p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$DataSource;->requestBitmapForIndex(Lcom/tndev/custom/coverflow/CoverFlowView;I)V

    goto :goto_2b
.end method

.method a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_5

    .line 248
    :cond_4
    :goto_4
    return-void

    .line 166
    :cond_5
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v6

    .line 167
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->r:I

    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 168
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getCoverWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 167
    sub-int v7, v0, v1

    .line 169
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->q:I

    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getCoverHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 171
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;

    .line 172
    if-eqz v0, :cond_a6

    .line 173
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->getStopAngleDegrees()F

    move-result v1

    move v4, v1

    .line 174
    :goto_37
    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->getStopZOffset()I

    move-result v1

    move v3, v1

    .line 176
    :goto_3e
    if-eqz v0, :cond_aa

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->getStopXOffset()I

    move-result v0

    move v1, v0

    .line 179
    :goto_45
    const/4 v0, 0x0

    .line 181
    if-ge v6, p2, :cond_b0

    .line 182
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ANGLE:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_5d

    .line 183
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->CENTER_COVER_OFFSET:I

    neg-int v5, v5

    if-ne v1, v5, :cond_5d

    .line 184
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ZPOSITION:I

    if-eq v3, v5, :cond_8c

    .line 185
    :cond_5d
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;-><init>()V

    .line 186
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ANGLE:F

    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setRotation(FF)V

    .line 187
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getCoverWidth()I

    move-result v4

    .line 188
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getOriginalCoverHeight()I

    move-result v5

    .line 187
    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setViewDimensions(II)V

    .line 189
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v4, v4, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->CENTER_COVER_OFFSET:I

    neg-int v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setXTranslation(II)V

    .line 190
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ZPOSITION:I

    invoke-virtual {v0, v3, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setZTranslation(II)V

    .line 191
    if-eqz p3, :cond_ac

    .line 192
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget-wide v3, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->BLUR_ANIMATION_DURATION:J

    invoke-virtual {v0, v3, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setDuration(J)V

    .line 240
    :cond_8c
    :goto_8c
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 240
    invoke-direct {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-virtual {v1, v7, v8, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 243
    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    invoke-virtual {p1, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {p1, v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_4

    :cond_a6
    move v4, v5

    .line 173
    goto :goto_37

    :cond_a8
    move v3, v2

    .line 175
    goto :goto_3e

    :cond_aa
    move v1, v2

    .line 177
    goto :goto_45

    .line 194
    :cond_ac
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setStatic()V

    goto :goto_8c

    .line 196
    :cond_b0
    if-le v6, p2, :cond_fb

    .line 197
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ANGLE:F

    neg-float v5, v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_c7

    .line 198
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->CENTER_COVER_OFFSET:I

    if-ne v1, v5, :cond_c7

    .line 199
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ZPOSITION:I

    if-eq v3, v5, :cond_8c

    .line 200
    :cond_c7
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;-><init>()V

    .line 201
    iget-object v5, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v5, v5, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ANGLE:F

    neg-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setRotation(FF)V

    .line 202
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getCoverWidth()I

    move-result v4

    .line 203
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getOriginalCoverHeight()I

    move-result v5

    .line 202
    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setViewDimensions(II)V

    .line 204
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v4, v4, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->CENTER_COVER_OFFSET:I

    invoke-virtual {v0, v1, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setXTranslation(II)V

    .line 205
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->SIDE_COVER_ZPOSITION:I

    invoke-virtual {v0, v3, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setZTranslation(II)V

    .line 206
    if-eqz p3, :cond_f7

    .line 207
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget-wide v3, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->BLUR_ANIMATION_DURATION:J

    invoke-virtual {v0, v3, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setDuration(J)V

    goto :goto_8c

    .line 210
    :cond_f7
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setStatic()V

    goto :goto_8c

    .line 213
    :cond_fb
    cmpl-float v6, v4, v5

    if-nez v6, :cond_103

    if-nez v1, :cond_103

    if-eqz v3, :cond_8c

    .line 214
    :cond_103
    new-instance v0, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;

    invoke-direct {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;-><init>()V

    .line 215
    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setRotation(FF)V

    .line 216
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getCoverWidth()I

    move-result v4

    .line 217
    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getOriginalCoverHeight()I

    move-result v5

    .line 216
    invoke-virtual {v0, v4, v5}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setViewDimensions(II)V

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setXTranslation(II)V

    .line 219
    invoke-virtual {v0, v3, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setZTranslation(II)V

    .line 220
    if-eqz p3, :cond_12f

    .line 221
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget-wide v3, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->FOCUS_ANIMATION_DURATION:J

    invoke-virtual {v0, v3, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setDuration(J)V

    .line 224
    :goto_125
    new-instance v1, Lgh;

    invoke-direct {v1, p0}, Lgh;-><init>(Lcom/tndev/custom/coverflow/CoverFlowView;)V

    invoke-virtual {v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_8c

    .line 223
    :cond_12f
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowView$ItemAnimation;->setStatic()V

    goto :goto_125
.end method

.method public a(Lcom/tndev/custom/coverflow/CoverFlowItem;Landroid/view/MotionEvent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    invoke-virtual {p1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method b()Lcom/tndev/custom/coverflow/CoverFlowItem;
    .registers 3

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 277
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 278
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 280
    :cond_1a
    return-object v0
.end method

.method public b(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    :goto_0
    if-gt p3, p1, :cond_5

    .line 266
    :goto_2
    if-le p2, p1, :cond_1b

    .line 272
    return-void

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 263
    if-eqz v0, :cond_18

    .line 264
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 261
    :cond_18
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 267
    :cond_1b
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 268
    if-eqz v0, :cond_2e

    .line 269
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 266
    :cond_2e
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public centerOnSelectedCover(Z)V
    .registers 5
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-nez v0, :cond_5

    .line 520
    :goto_4
    return-void

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    .line 511
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    .line 510
    mul-int/2addr v0, v1

    .line 512
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    new-instance v2, Lgi;

    invoke-direct {v2, p0, p1, v0}, Lgi;-><init>(Lcom/tndev/custom/coverflow/CoverFlowView;ZI)V

    invoke-virtual {v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 454
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    .line 455
    iput-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 456
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 457
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 458
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 459
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 460
    iput-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->h:Landroid/graphics/Bitmap;

    .line 461
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 462
    iput v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 465
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 466
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 467
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tndev/custom/coverflow/CoverFlowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    .line 468
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    return-void
.end method

.method public getConfig()Lcom/tndev/custom/coverflow/CoverFlowView$Config;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    return-object v0
.end method

.method public getReflectedBitmaps()[Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Landroid/graphics/Bitmap;

    .line 306
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    array-length v0, v2

    if-lt v1, v0, :cond_e

    .line 308
    return-object v2

    .line 307
    :cond_e
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    .line 306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 319
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    mul-int/2addr v1, v2

    .line 321
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 320
    add-int/2addr v1, v2

    .line 322
    const/4 v2, -0x1

    .line 319
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 325
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 330
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->r:I

    .line 331
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->q:I

    .line 333
    const/4 v2, -0x1

    .line 334
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 336
    :goto_17
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    .line 334
    sub-int/2addr v0, v3

    .line 333
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 337
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    add-int/lit8 v3, v0, -0x1

    .line 338
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 340
    :goto_2e
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v4, v4, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    .line 338
    add-int/2addr v0, v4

    .line 337
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 341
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 342
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 341
    :goto_41
    invoke-virtual {p0, v0, v2, v3}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(III)V

    .line 344
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->centerOnSelectedCover(Z)V

    .line 345
    return-void

    :cond_48
    move v0, v1

    .line 335
    goto :goto_17

    :cond_4a
    move v0, v1

    .line 339
    goto :goto_2e

    :cond_4c
    move v0, v1

    .line 342
    goto :goto_41
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_152

    .line 420
    :cond_9
    :goto_9
    return v1

    .line 351
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    .line 352
    iget-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    if-eqz v0, :cond_1d

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->u:F

    .line 354
    :cond_1d
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->o:I

    .line 355
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->t:F

    goto :goto_9

    :cond_34
    move v0, v2

    .line 351
    goto :goto_11

    .line 358
    :pswitch_36
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->t:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v3, v0

    .line 359
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->u:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 362
    iget-boolean v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    if-eqz v4, :cond_96

    const/16 v4, 0x14

    if-ge v0, v4, :cond_96

    move v0, v1

    :goto_53
    iput-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    .line 364
    iget-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    if-nez v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->scrollTo(II)V

    .line 369
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    div-int v0, v3, v0

    .line 372
    if-gez v0, :cond_98

    .line 378
    :goto_6c
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    if-eq v2, v0, :cond_9

    .line 379
    invoke-virtual {p0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView;->setSelectedCover(I)V

    .line 381
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;

    .line 383
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    .line 382
    invoke-interface {v0, p0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;->onSelectionChanging(Lcom/tndev/custom/coverflow/CoverFlowView;I)V

    goto/16 :goto_9

    :cond_96
    move v0, v2

    .line 362
    goto :goto_53

    .line 374
    :cond_98
    iget v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    if-lt v0, v2, :cond_14e

    .line 375
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    add-int/lit8 v2, v0, -0x1

    goto :goto_6c

    .line 389
    :pswitch_a1
    iget-boolean v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->s:Z

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 390
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 391
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 392
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v3}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v3

    if-ge v3, v2, :cond_114

    .line 393
    invoke-virtual {p0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView;->setSelectedCover(I)V

    .line 404
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    .line 405
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v3}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->getScrollY()I

    move-result v3

    .line 404
    invoke-virtual {v0, v2, v3}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->smoothScrollTo(II)V

    .line 407
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->o:I

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_10d

    .line 409
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 410
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;

    .line 411
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    .line 410
    invoke-interface {v0, p0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;->onSelectionChanged(Lcom/tndev/custom/coverflow/CoverFlowView;I)V

    .line 415
    :cond_10d
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->v:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    goto/16 :goto_9

    .line 394
    :cond_114
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v3}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v3

    if-le v3, v0, :cond_120

    .line 395
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->setSelectedCover(I)V

    goto :goto_d0

    .line 396
    :cond_120
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v3}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v3

    if-gt v2, v3, :cond_d0

    .line 397
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    if-lt v0, v2, :cond_d0

    .line 398
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 399
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;

    .line 400
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v2

    .line 399
    invoke-interface {v0, p0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;->onSelectionClicked(Lcom/tndev/custom/coverflow/CoverFlowView;I)V

    goto :goto_d0

    :cond_14e
    move v2, v0

    goto/16 :goto_6c

    .line 349
    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a1
        :pswitch_36
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 446
    :cond_9
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 427
    :pswitch_b
    const/4 v0, -0x1

    .line 428
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5b

    .line 429
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 433
    :cond_1c
    :goto_1c
    if-ltz v0, :cond_9

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    if-le v1, v0, :cond_9

    .line 434
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    if-eq v1, v0, :cond_9

    .line 435
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->setSelectedCover(I)V

    .line 436
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_SPACING:I

    mul-int/2addr v0, v2

    .line 437
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    invoke-virtual {v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->getScrollY()I

    move-result v2

    .line 436
    invoke-virtual {v1, v0, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->smoothScrollTo(II)V

    .line 439
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 440
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;

    .line 441
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    .line 440
    invoke-interface {v0, p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView$Listener;->onSelectionChanged(Lcom/tndev/custom/coverflow/CoverFlowView;I)V

    goto :goto_9

    .line 430
    :cond_5b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1c

    .line 431
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 425
    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_b
    .end packed-switch
.end method

.method public setBitmapForIndex(Landroid/graphics/Bitmap;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    .line 286
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->DROP_SHADOW_RADIUS:I

    .line 285
    invoke-static {p1, v0, v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->a(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0, p2}, Lcom/tndev/custom/coverflow/CoverFlowView;->setReflectedBitmapForIndex(Landroid/graphics/Bitmap;I)V

    .line 288
    return-void
.end method

.method public setDataSource(Lcom/tndev/custom/coverflow/CoverFlowView$DataSource;)V
    .registers 3
    .parameter

    .prologue
    .line 498
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->b:Ljava/lang/ref/WeakReference;

    .line 499
    invoke-interface {p1}, Lcom/tndev/custom/coverflow/CoverFlowView$DataSource;->defaultBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 500
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 493
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_6
    iput v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->i:I

    .line 494
    iput-object p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->h:Landroid/graphics/Bitmap;

    .line 495
    return-void

    .line 493
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setListener(Lcom/tndev/custom/coverflow/CoverFlowView$Listener;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->c:Ljava/lang/ref/WeakReference;

    .line 504
    return-void
.end method

.method public setNumberOfImages(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 474
    iput p1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    .line 476
    const/4 v2, -0x1

    .line 477
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 479
    :goto_e
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v3, v3, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    .line 477
    sub-int/2addr v0, v3

    .line 476
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 480
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    add-int/lit8 v3, v0, -0x1

    .line 481
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 483
    :goto_25
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v4, v4, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    .line 481
    add-int/2addr v0, v4

    .line 480
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 484
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v3, :cond_43

    .line 485
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v3}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(III)V

    .line 489
    :goto_3b
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->centerOnSelectedCover(Z)V

    .line 490
    return-void

    :cond_3f
    move v0, v1

    .line 478
    goto :goto_e

    :cond_41
    move v0, v1

    .line 482
    goto :goto_25

    .line 487
    :cond_43
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->setSelectedCover(I)V

    goto :goto_3b
.end method

.method public setReflectedBitmapForIndex(Landroid/graphics/Bitmap;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->DROP_SHADOW_RADIUS:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 293
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->g:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 297
    if-eqz v0, :cond_4a

    .line 299
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v2, v2, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->REFLECTION_FRACTION:F

    .line 298
    invoke-virtual {v0, p1, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setImageBitmap(Landroid/graphics/Bitmap;IF)V

    .line 300
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v1}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 302
    :cond_4a
    return-void
.end method

.method public setSelectedCover(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 523
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-eqz v0, :cond_e

    .line 524
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 681
    :cond_d
    :goto_d
    return-void

    .line 527
    :cond_e
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    if-ge p1, v0, :cond_d

    .line 532
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    sub-int v0, p1, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 533
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->n:I

    add-int/lit8 v0, v0, -0x1

    .line 534
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->a:Lcom/tndev/custom/coverflow/CoverFlowView$Config;

    iget v1, v1, Lcom/tndev/custom/coverflow/CoverFlowView$Config;->COVER_BUFFER:I

    add-int/2addr v1, p1

    .line 533
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 535
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    if-nez v0, :cond_71

    move v0, v2

    .line 537
    :goto_2e
    if-le v0, v3, :cond_4b

    .line 552
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 553
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 554
    invoke-virtual {p0, v0, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 556
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 557
    iput v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 558
    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    goto :goto_d

    .line 538
    :cond_4b
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(I)Lcom/tndev/custom/coverflow/CoverFlowItem;

    move-result-object v1

    .line 539
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 541
    if-ne v0, p1, :cond_60

    .line 537
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 544
    :cond_60
    if-ge v0, p1, :cond_6b

    .line 545
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    :goto_67
    invoke-virtual {p0, v1, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    goto :goto_5d

    .line 547
    :cond_6b
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_67

    .line 561
    :cond_71
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    iget v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 562
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 561
    invoke-virtual {p0, v0, v1, v4}, Lcom/tndev/custom/coverflow/CoverFlowView;->b(III)V

    .line 566
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    if-gt v2, v0, :cond_86

    .line 567
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    if-ge v3, v0, :cond_f2

    .line 572
    :cond_86
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    move v1, v0

    :goto_89
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    if-le v1, v0, :cond_ac

    move v0, v2

    .line 580
    :goto_8e
    if-le v0, v3, :cond_cf

    .line 593
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 594
    iget-object v1, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 597
    iput v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 598
    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 599
    invoke-virtual {p0, p1, v2, v3}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(III)V

    goto/16 :goto_d

    .line 573
    :cond_ac
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 574
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_89

    .line 581
    :cond_cf
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(I)Lcom/tndev/custom/coverflow/CoverFlowItem;

    move-result-object v1

    .line 582
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 584
    if-ne v0, p1, :cond_e4

    .line 580
    :goto_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 587
    :cond_e4
    if-ge v0, p1, :cond_ec

    .line 588
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_e1

    .line 590
    :cond_ec
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_e1

    .line 603
    :cond_f2
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    if-le p1, v0, :cond_18c

    .line 607
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    move v1, v0

    :goto_fd
    if-lt v1, v2, :cond_12a

    .line 624
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 627
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    add-int/lit8 v0, v0, 0x1

    :goto_105
    if-le v0, v3, :cond_170

    .line 634
    iput v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 671
    :goto_109
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    if-le v0, p1, :cond_1fe

    .line 672
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 673
    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    .line 672
    invoke-virtual {p0, p1, p1, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(III)V

    .line 679
    :cond_11a
    :goto_11a
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    iput-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    goto/16 :goto_d

    .line 608
    :cond_12a
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 609
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    if-ge v4, v3, :cond_165

    .line 611
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 612
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    invoke-virtual {v0, v4}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setNumber(I)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 614
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {p0, v0, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 621
    :goto_158
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_fd

    .line 618
    :cond_165
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_158

    .line 628
    :cond_170
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(I)Lcom/tndev/custom/coverflow/CoverFlowItem;

    move-result-object v1

    .line 629
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 631
    iget-object v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 632
    invoke-virtual {p0, v1, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_105

    .line 639
    :cond_18c
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    move v1, v0

    :goto_18f
    if-gt v1, v3, :cond_19d

    .line 657
    iput v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->m:I

    .line 660
    iget v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    add-int/lit8 v0, v0, -0x1

    :goto_197
    if-ge v0, v2, :cond_1e3

    .line 668
    iput v2, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    goto/16 :goto_109

    .line 640
    :cond_19d
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/custom/coverflow/CoverFlowItem;

    .line 641
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    if-le v4, v2, :cond_1d8

    .line 643
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    .line 644
    iget v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->l:I

    invoke-virtual {v0, v4}, Lcom/tndev/custom/coverflow/CoverFlowItem;->setNumber(I)V

    .line 645
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 646
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {p0, v0, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 654
    :goto_1cb
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_18f

    .line 651
    :cond_1d8
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v4, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1cb

    .line 661
    :cond_1e3
    invoke-virtual {p0, v0}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(I)Lcom/tndev/custom/coverflow/CoverFlowItem;

    move-result-object v1

    .line 662
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {p0, v1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;)V

    .line 664
    iget-object v3, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 665
    invoke-virtual {p0, v1, p1, v6}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;IZ)V

    .line 660
    add-int/lit8 v0, v0, -0x1

    goto :goto_197

    .line 674
    :cond_1fe
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    if-le p1, v0, :cond_11a

    .line 675
    iget-object v0, p0, Lcom/tndev/custom/coverflow/CoverFlowView;->p:Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0}, Lcom/tndev/custom/coverflow/CoverFlowItem;->getNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0, p1}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(III)V

    goto/16 :goto_11a
.end method
