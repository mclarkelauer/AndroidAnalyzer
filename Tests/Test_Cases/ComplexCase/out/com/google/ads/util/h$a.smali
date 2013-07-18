.class public Lcom/google/ads/util/h$a;
.super Lcom/google/ads/util/g$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/ads/m;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/ads/util/g$a;-><init>(Lcom/google/ads/m;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 43
    return-void
.end method
