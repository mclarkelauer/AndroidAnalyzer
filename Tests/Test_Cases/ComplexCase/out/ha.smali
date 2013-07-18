.class public Lha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lha;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter

    .prologue
    .line 997
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1006
    :goto_5
    const/4 v0, 0x0

    return v0

    .line 999
    :pswitch_7
    iget-object v1, p0, Lha;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V

    goto :goto_5

    .line 1003
    :pswitch_11
    iget-object v1, p0, Lha;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    invoke-static {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V

    goto :goto_5

    .line 997
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_7
    .end packed-switch
.end method
