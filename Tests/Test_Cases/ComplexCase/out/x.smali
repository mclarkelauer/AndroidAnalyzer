.class public Lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/AdRequest;

.field final synthetic c:Lcom/google/ads/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lx;->c:Lcom/google/ads/e;

    iput-object p2, p0, Lx;->a:Lcom/google/ads/c;

    iput-object p3, p0, Lx;->b:Lcom/google/ads/AdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lx;->c:Lcom/google/ads/e;

    iget-object v1, p0, Lx;->a:Lcom/google/ads/c;

    iget-object v2, p0, Lx;->b:Lcom/google/ads/AdRequest;

    invoke-static {v0, v1, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/e;Lcom/google/ads/c;Lcom/google/ads/AdRequest;)V

    .line 140
    iget-object v0, p0, Lx;->c:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->a(Lcom/google/ads/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 141
    :try_start_10
    iget-object v0, p0, Lx;->c:Lcom/google/ads/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/ads/e;->a(Lcom/google/ads/e;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v0
.end method
