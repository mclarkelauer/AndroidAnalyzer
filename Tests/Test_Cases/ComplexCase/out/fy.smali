.class public Lfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/common/ui/HorizontalListView;


# direct methods
.method public constructor <init>(Lcom/tndev/common/ui/HorizontalListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfy;->a:Lcom/tndev/common/ui/HorizontalListView;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lfy;->a:Lcom/tndev/common/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/tndev/common/ui/HorizontalListView;->requestLayout()V

    .line 203
    return-void
.end method
