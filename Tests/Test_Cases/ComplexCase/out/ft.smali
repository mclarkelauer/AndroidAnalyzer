.class public Lft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/common/activity/MoreGameActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/common/activity/MoreGameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lft;->a:Lcom/tndev/common/activity/MoreGameActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 85
    const-string v0, ""

    .line 87
    :try_start_2
    const-string v0, "http://twopx-christmasframes.appspot.com/data/apps.dat"

    invoke-static {v0}, Lcom/tndev/common/utils/NetworkUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lft;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v1, v1, Lcom/tndev/common/activity/MoreGameActivity;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 89
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lft;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v0, v0, Lcom/tndev/common/activity/MoreGameActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 95
    :goto_1a
    return-void

    .line 91
    :catch_1b
    move-exception v0

    .line 92
    iget-object v0, p0, Lft;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v0, v0, Lcom/tndev/common/activity/MoreGameActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lft;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v1, v1, Lcom/tndev/common/activity/MoreGameActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a
.end method
