.class public Lhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lhj;)Lcom/tndev/funnyframes/EditActivity;
    .registers 2
    .parameter

    .prologue
    .line 1010
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1015
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;)I

    move-result v0

    if-ne p3, v0, :cond_a

    .line 1053
    :goto_9
    return-void

    .line 1018
    :cond_a
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->b(Lcom/tndev/funnyframes/EditActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/hdframes/model/FrameInfo;

    .line 1020
    iget v1, v0, Lcom/tndev/hdframes/model/FrameInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 1021
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhk;

    invoke-direct {v2, p0}, Lhk;-><init>(Lhj;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_9

    .line 1028
    :cond_33
    invoke-virtual {v0}, Lcom/tndev/hdframes/model/FrameInfo;->isFree()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-boolean v1, v1, Lcom/tndev/funnyframes/EditActivity;->l:Z

    if-eqz v1, :cond_6a

    .line 1030
    :cond_3f
    iget-object v1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1, p3}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;I)V

    .line 1033
    iget-object v1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1, v0}, Lcom/tndev/funnyframes/EditActivity;->c(Lcom/tndev/funnyframes/EditActivity;Lcom/tndev/hdframes/model/FrameInfo;)V

    .line 1035
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1036
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    .line 1037
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->k:Ljava/util/Timer;

    new-instance v1, Lhu;

    iget-object v2, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-direct {v1, v2, v3}, Lhu;-><init>(Lcom/tndev/funnyframes/EditActivity;Lhu;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_9

    .line 1040
    :cond_6a
    iget-object v0, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lhj;->a:Lcom/tndev/funnyframes/EditActivity;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/tndev/funnyframes/EditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lhl;

    invoke-direct {v2, p0}, Lhl;-><init>(Lhj;)V

    .line 1045
    new-instance v3, Lhm;

    invoke-direct {v3, p0}, Lhm;-><init>(Lhj;)V

    .line 1040
    invoke-static {v0, v1, v2, v3}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_9
.end method
