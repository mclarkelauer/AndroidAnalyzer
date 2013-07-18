.class public Lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lt;->b:Landroid/webkit/WebView;

    .line 175
    iput-boolean p2, p0, Lt;->a:Z

    .line 176
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lt;->b:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lt;->a:Z

    invoke-static {v0, v1}, Lcom/google/ads/ag;->a(Landroid/webkit/WebView;Z)V

    .line 181
    return-void
.end method
