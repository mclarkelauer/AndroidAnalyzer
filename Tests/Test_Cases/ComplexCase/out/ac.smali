.class public Lac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/e;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lac;->a:Lcom/google/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lac;->a:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->v()V

    .line 279
    return-void
.end method
