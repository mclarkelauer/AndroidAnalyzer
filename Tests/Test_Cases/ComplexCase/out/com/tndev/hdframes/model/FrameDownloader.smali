.class public Lcom/tndev/hdframes/model/FrameDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/tndev/hdframes/model/FrameDownloader;


# instance fields
.field downloadFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tndev/hdframes/model/FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/tndev/hdframes/model/FrameDownloader;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static get()Lcom/tndev/hdframes/model/FrameDownloader;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/tndev/hdframes/model/FrameDownloader;->instance:Lcom/tndev/hdframes/model/FrameDownloader;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/tndev/hdframes/model/FrameDownloader;

    invoke-direct {v0}, Lcom/tndev/hdframes/model/FrameDownloader;-><init>()V

    sput-object v0, Lcom/tndev/hdframes/model/FrameDownloader;->instance:Lcom/tndev/hdframes/model/FrameDownloader;

    .line 38
    :cond_b
    sget-object v0, Lcom/tndev/hdframes/model/FrameDownloader;->instance:Lcom/tndev/hdframes/model/FrameDownloader;

    return-object v0
.end method


# virtual methods
.method public queueFrame(Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 5
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    monitor-enter v1

    .line 65
    :try_start_3
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 66
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;

    invoke-direct {v2, p0, p1}, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;-><init>(Lcom/tndev/hdframes/model/FrameDownloader;Lcom/tndev/hdframes/model/FrameInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 64
    :cond_1a
    monitor-exit v1

    .line 70
    return-void

    .line 64
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    sput-object v1, Lcom/tndev/hdframes/model/FrameDownloader;->instance:Lcom/tndev/hdframes/model/FrameDownloader;

    .line 51
    return-void
.end method
