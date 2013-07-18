.class public Lfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tndev/common/activity/MoreGameActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/common/activity/MoreGameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfp;)Lcom/tndev/common/activity/MoreGameActivity;
    .registers 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 189
    :goto_6
    const/4 v0, 0x1

    return v0

    .line 166
    :pswitch_8
    :try_start_8
    iget-object v1, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tndev/common/activity/MoreGameActivity;->a(Lcom/tndev/common/activity/MoreGameActivity;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_19

    .line 176
    :goto_11
    iget-object v0, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v0, v0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_6

    .line 167
    :catch_19
    move-exception v0

    .line 168
    iget-object v0, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    const-string v1, "Oops! Something wrong!"

    new-instance v2, Lfq;

    invoke-direct {v2, p0}, Lfq;-><init>(Lfp;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_11

    .line 179
    :pswitch_27
    iget-object v0, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    iget-object v0, v0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 180
    iget-object v0, p0, Lfp;->a:Lcom/tndev/common/activity/MoreGameActivity;

    const-string v1, "Can not download game list."

    new-instance v2, Lfr;

    invoke-direct {v2, p0}, Lfr;-><init>(Lfp;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_6

    .line 163
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_27
    .end packed-switch
.end method
