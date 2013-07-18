.class public Lgg;
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
    iput-object p1, p0, Lgg;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lgg;->a:Lcom/tndev/custom/coverflow/CoverFlowView;

    check-cast p1, Lcom/tndev/custom/coverflow/CoverFlowItem;

    invoke-virtual {v0, p1, p2}, Lcom/tndev/custom/coverflow/CoverFlowView;->a(Lcom/tndev/custom/coverflow/CoverFlowItem;Landroid/view/MotionEvent;)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method
