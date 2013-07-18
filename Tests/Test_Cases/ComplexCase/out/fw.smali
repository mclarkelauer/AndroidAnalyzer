.class public Lfw;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/common/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/tndev/common/ui/HorizontalListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    .line 95
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .prologue
    .line 99
    iget-object v1, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tndev/common/ui/HorizontalListView;->a(Lcom/tndev/common/ui/HorizontalListView;Z)V

    .line 99
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 102
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->invalidate()V

    .line 103
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V

    .line 104
    return-void

    .line 99
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-static {v0}, Lcom/tndev/common/ui/HorizontalListView;->a(Lcom/tndev/common/ui/HorizontalListView;)V

    .line 109
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->invalidate()V

    .line 110
    iget-object v0, p0, Lfw;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V

    .line 111
    return-void
.end method
