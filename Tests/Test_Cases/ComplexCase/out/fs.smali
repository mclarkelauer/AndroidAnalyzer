.class public Lfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/common/activity/MoreGameActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/common/activity/MoreGameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfs;->a:Lcom/tndev/common/activity/MoreGameActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lfs;->a:Lcom/tndev/common/activity/MoreGameActivity;

    invoke-virtual {v0}, Lcom/tndev/common/activity/MoreGameActivity;->finish()V

    .line 71
    return-void
.end method
