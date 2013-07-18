.class Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field frame:Lcom/tndev/hdframes/model/FrameInfo;

.field final synthetic this$0:Lcom/tndev/hdframes/model/FrameDownloader;


# direct methods
.method public constructor <init>(Lcom/tndev/hdframes/model/FrameDownloader;Lcom/tndev/hdframes/model/FrameInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->frame:Lcom/tndev/hdframes/model/FrameInfo;

    .line 82
    return-void
.end method

.method private downloadBitmap(Lcom/tndev/hdframes/model/FrameInfo;)J
    .registers 11
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-static {p1}, Lcom/tndev/hdframes/model/FrameUtils;->isFrameDownloaded(Lcom/tndev/hdframes/model/FrameInfo;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 116
    :try_start_8
    iget-object v0, p1, Lcom/tndev/hdframes/model/FrameInfo;->frameThumb:Ljava/lang/String;

    invoke-static {p1}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameThumbPath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tndev/common/utils/NetworkUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v2

    .line 123
    :goto_2b
    cmp-long v5, v0, v2

    if-nez v5, :cond_32

    const/4 v5, 0x5

    if-lt v4, v5, :cond_33

    .line 147
    :cond_32
    :goto_32
    return-wide v0

    .line 124
    :cond_33
    iget-object v0, p1, Lcom/tndev/hdframes/model/FrameInfo;->frameUrl:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/tndev/common/utils/NetworkUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/tndev/hdframes/model/FrameUtils;->getFrameFilePath(Lcom/tndev/hdframes/model/FrameInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 131
    add-int/lit8 v0, v4, 0x1

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 134
    cmp-long v7, v4, v2

    if-nez v7, :cond_56

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_56} :catch_5a

    :cond_56
    move v8, v0

    move-wide v0, v4

    move v4, v8

    goto :goto_2b

    .line 142
    :catch_5a
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    .line 144
    goto :goto_32

    .line 147
    :cond_60
    const-wide/16 v0, -0x1

    goto :goto_32
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 86
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 88
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->frame:Lcom/tndev/hdframes/model/FrameInfo;

    invoke-direct {p0, v0}, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->downloadBitmap(Lcom/tndev/hdframes/model/FrameInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3e

    .line 90
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    iget-object v1, v0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    monitor-enter v1

    .line 91
    :try_start_16
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    iget-object v0, v0, Lcom/tndev/hdframes/model/FrameDownloader;->downloadFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->frame:Lcom/tndev/hdframes/model/FrameInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_3b

    .line 94
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    #getter for: Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameDownloader;->access$0(Lcom/tndev/hdframes/model/FrameDownloader;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 95
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 96
    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->frame:Lcom/tndev/hdframes/model/FrameInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    #getter for: Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tndev/hdframes/model/FrameDownloader;->access$0(Lcom/tndev/hdframes/model/FrameDownloader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    :goto_3a
    return-void

    .line 90
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0

    .line 99
    :cond_3e
    iget-object v0, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    #getter for: Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tndev/hdframes/model/FrameDownloader;->access$0(Lcom/tndev/hdframes/model/FrameDownloader;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 100
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->frame:Lcom/tndev/hdframes/model/FrameInfo;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/tndev/hdframes/model/FrameDownloader$ImageQueueManager;->this$0:Lcom/tndev/hdframes/model/FrameDownloader;

    #getter for: Lcom/tndev/hdframes/model/FrameDownloader;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tndev/hdframes/model/FrameDownloader;->access$0(Lcom/tndev/hdframes/model/FrameDownloader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3a
.end method
