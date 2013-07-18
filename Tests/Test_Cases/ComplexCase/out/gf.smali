.class public Lgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/coverflow/CoverFlowView;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/coverflow/CoverFlowView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgf;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lgf;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    invoke-virtual {v0, p2}, Lcom/tndev/custom/coverflow/CoverFlowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
