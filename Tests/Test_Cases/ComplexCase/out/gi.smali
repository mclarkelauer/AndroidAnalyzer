.class public Lgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/custom/coverflow/CoverFlowView;

.field private final synthetic b:Z

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/tndev/custom/coverflow/CoverFlowView;ZI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgi;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iput-boolean p2, p0, Lgi;->b:Z

    iput p3, p0, Lgi;->c:I

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-boolean v0, p0, Lgi;->b:Z

    if-eqz v0, :cond_f

    .line 515
    iget-object v0, p0, Lgi;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget-object v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    iget v1, p0, Lgi;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->smoothScrollTo(II)V

    .line 518
    :goto_e
    return-void

    .line 517
    :cond_f
    iget-object v0, p0, Lgi;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    iget-object v0, v0, Lcom/tndev/custom/coverflow/CoverFlowView;->j:Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;

    iget v1, p0, Lgi;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;->scrollTo(II)V

    goto :goto_e
.end method
