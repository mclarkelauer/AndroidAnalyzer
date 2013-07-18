.class public Lab;
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
    .line 262
    iput-object p1, p0, Lab;->a:Lcom/google/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lab;->a:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()V

    .line 266
    return-void
.end method
