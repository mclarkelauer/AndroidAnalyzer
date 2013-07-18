.class public Lfu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/common/activity/MoreGameActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/common/activity/MoreGameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfu;->a:Lcom/tndev/common/activity/MoreGameActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lfu;->a:Lcom/tndev/common/activity/MoreGameActivity;

    invoke-virtual {v0}, Lcom/tndev/common/activity/MoreGameActivity;->finish()V

    .line 104
    return-void
.end method
