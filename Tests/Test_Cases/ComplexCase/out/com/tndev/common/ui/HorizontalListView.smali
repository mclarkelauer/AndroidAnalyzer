.class public Lcom/tndev/common/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/GestureDetector;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private h:Landroid/widget/AdapterView$OnItemClickListener;

.field private i:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private j:Z

.field private k:Landroid/database/DataSetObserver;

.field private l:Landroid/view/GestureDetector$OnGestureListener;

.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field public mNextX:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    .line 50
    iput v1, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    .line 53
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    .line 54
    iput v1, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->f:Ljava/util/Queue;

    .line 61
    iput-boolean v1, p0, Lcom/tndev/common/ui/HorizontalListView;->j:Z

    .line 95
    new-instance v0, Lfw;

    invoke-direct {v0, p0}, Lfw;-><init>(Lcom/tndev/common/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->k:Landroid/database/DataSetObserver;

    .line 316
    new-instance v0, Lfx;

    invoke-direct {v0, p0}, Lfx;-><init>(Lcom/tndev/common/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->l:Landroid/view/GestureDetector$OnGestureListener;

    .line 66
    invoke-direct {p0}, Lcom/tndev/common/ui/HorizontalListView;->a()V

    .line 67
    return-void
.end method

.method private declared-synchronized a()V
    .registers 4

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mCurrentX:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 75
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    .line 76
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 77
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tndev/common/ui/HorizontalListView;->l:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->e:Landroid/view/GestureDetector;
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_2f

    .line 78
    monitor-exit p0

    return-void

    .line 70
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_22

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 215
    :goto_11
    invoke-direct {p0, v0, p1}, Lcom/tndev/common/ui/HorizontalListView;->a(II)V

    .line 218
    invoke-virtual {p0, v1}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1e

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 222
    :cond_1e
    invoke-direct {p0, v1, p1}, Lcom/tndev/common/ui/HorizontalListView;->b(II)V

    .line 225
    return-void

    :cond_22
    move v0, v1

    goto :goto_11
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 228
    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 244
    :cond_12
    return-void

    .line 230
    :cond_13
    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 231
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/tndev/common/ui/HorizontalListView;->a(Landroid/view/View;I)V

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    .line 234
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_42

    .line 235
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mCurrentX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    .line 238
    :cond_42
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    if-gez v0, :cond_49

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    .line 241
    :cond_49
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    goto :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v2, -0x8000

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 149
    if-nez v0, :cond_e

    .line 150
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 153
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tndev/common/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 154
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 155
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 156
    return-void
.end method

.method public static synthetic a(Lcom/tndev/common/ui/HorizontalListView;)V
    .registers 1
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/tndev/common/ui/HorizontalListView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/tndev/common/ui/HorizontalListView;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tndev/common/ui/HorizontalListView;->j:Z

    return-void
.end method

.method public static synthetic b(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->h:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/tndev/common/ui/HorizontalListView;->a()V

    .line 138
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 139
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 140
    monitor-exit p0

    return-void

    .line 137
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, v3}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    :goto_5
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_26

    .line 267
    :cond_e
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    :goto_18
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 274
    :cond_25
    return-void

    .line 259
    :cond_26
    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    .line 260
    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->f:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 262
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    .line 263
    invoke-virtual {p0, v3}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 269
    :cond_42
    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->f:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 271
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->b:I

    .line 272
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_18
.end method

.method private b(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 247
    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_8

    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    if-gez v0, :cond_9

    .line 254
    :cond_8
    return-void

    .line 248
    :cond_9
    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tndev/common/ui/HorizontalListView;->a(Landroid/view/View;I)V

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 251
    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    .line 252
    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tndev/common/ui/HorizontalListView;)I
    .registers 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->a:I

    return v0
.end method

.method private c(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_16

    .line 278
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    .line 279
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->d:I

    move v2, v0

    move v0, v1

    .line 280
    :goto_10
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_17

    .line 287
    :cond_16
    return-void

    .line 281
    :cond_17
    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 283
    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public static synthetic d(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->g:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public static synthetic e(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->i:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->e:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 298
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 313
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    monitor-enter p0

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 303
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 306
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V

    .line 308
    const/4 v0, 0x1

    return v0

    .line 303
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 164
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_6b

    if-nez v0, :cond_a

    .line 207
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 168
    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/tndev/common/ui/HorizontalListView;->j:Z

    if-eqz v0, :cond_1b

    .line 169
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mCurrentX:I

    .line 170
    invoke-direct {p0}, Lcom/tndev/common/ui/HorizontalListView;->a()V

    .line 171
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 172
    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/common/ui/HorizontalListView;->j:Z

    .line 176
    :cond_1b
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 177
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 178
    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 181
    :cond_2b
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    if-gtz v0, :cond_38

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 183
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 185
    :cond_38
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    if-lt v0, v1, :cond_48

    .line 186
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->c:I

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 187
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 190
    :cond_48
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mCurrentX:I

    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    sub-int/2addr v0, v1

    .line 192
    invoke-direct {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->b(I)V

    .line 193
    invoke-direct {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->a(I)V

    .line 194
    invoke-direct {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->c(I)V

    .line 196
    iget v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    iput v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mCurrentX:I

    .line 198
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Lfy;

    invoke-direct {v0, p0}, Lfy;-><init>(Lcom/tndev/common/ui/HorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/tndev/common/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_6b

    goto :goto_8

    .line 162
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scrollTo(I)V
    .registers 7
    .parameter

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 291
    invoke-virtual {p0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 292
    monitor-exit p0

    return-void

    .line 290
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tndev/common/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->k:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 131
    :cond_b
    iput-object p1, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 132
    iget-object v0, p0, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tndev/common/ui/HorizontalListView;->k:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    invoke-direct {p0}, Lcom/tndev/common/ui/HorizontalListView;->b()V

    .line 134
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tndev/common/ui/HorizontalListView;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 88
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tndev/common/ui/HorizontalListView;->i:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 93
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tndev/common/ui/HorizontalListView;->g:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 83
    return-void
.end method

.method public setSelection(I)V
    .registers 2
    .parameter

    .prologue
    .line 145
    return-void
.end method
