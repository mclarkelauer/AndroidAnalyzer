.class public Lge;
.super Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/tndev/custom/coverflow/CoverFlowView;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/coverflow/CoverFlowView;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lge;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    .line 97
    invoke-direct {p0, p2}, Lcom/tndev/custom/coverflow/CoverFlowView$ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lge;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    invoke-virtual {v0, p1}, Lcom/tndev/custom/coverflow/CoverFlowView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
