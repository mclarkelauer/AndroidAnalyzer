.class public Lfx;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/common/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/tndev/common/ui/HorizontalListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    .line 316
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 375
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 376
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 377
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 379
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 380
    const/4 v4, 0x1

    aget v1, v1, v4

    .line 381
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 382
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/tndev/common/ui/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tndev/common/ui/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v1

    .line 362
    const/4 v0, 0x0

    move v4, v0

    :goto_8
    if-lt v4, v1, :cond_b

    .line 372
    :cond_a
    :goto_a
    return-void

    .line 363
    :cond_b
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0, v4}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 364
    invoke-direct {p0, p1, v2}, Lfx;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 365
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->e(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 366
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->e(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v3, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v3}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    iget-object v5, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v5, v5, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v6, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v6}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_a

    .line 362
    :cond_45
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_8
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v1, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    monitor-enter v1

    .line 334
    :try_start_3
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget v2, v0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/tndev/common/ui/HorizontalListView;->mNextX:I

    .line 333
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    .line 336
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V

    .line 338
    const/4 v0, 0x1

    return v0

    .line 333
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->getChildCount()I

    move-result v0

    if-lt v6, v0, :cond_c

    .line 356
    :cond_a
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 344
    :cond_c
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0, v6}, Lcom/tndev/common/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 345
    invoke-direct {p0, p1, v2}, Lfx;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 346
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->b(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 347
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->b(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v3, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v3}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v4, v4, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v5}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 349
    :cond_45
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->d(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 350
    iget-object v0, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->d(Lcom/tndev/common/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v3, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v3}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    iget-object v4, v4, Lcom/tndev/common/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lfx;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v5}, Lcom/tndev/common/ui/HorizontalListView;->c(Lcom/tndev/common/ui/HorizontalListView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_a

    .line 343
    :cond_73
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2
.end method
