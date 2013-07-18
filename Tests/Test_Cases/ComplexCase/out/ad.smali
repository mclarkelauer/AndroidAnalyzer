.class public Lad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/e;Lcom/google/ads/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lad;->b:Lcom/google/ads/e;

    iput-object p2, p0, Lad;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lad;->b:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lad;->a:Lcom/google/ads/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->b(Lcom/google/ads/c;)V

    .line 373
    return-void
.end method
