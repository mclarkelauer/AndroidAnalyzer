.class public Ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/f;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/f;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Ly;->c:Lcom/google/ads/e;

    iput-object p2, p0, Ly;->a:Lcom/google/ads/f;

    iput-boolean p3, p0, Ly;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 218
    iget-object v0, p0, Ly;->c:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Ly;->a:Lcom/google/ads/f;

    iget-boolean v2, p0, Ly;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Z)V

    .line 219
    return-void
.end method
