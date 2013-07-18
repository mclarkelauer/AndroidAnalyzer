.class public final Lam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/util/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/util/f",
        "<",
        "Lcom/google/ads/internal/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/ads/internal/a;
    .registers 2

    .prologue
    .line 73
    invoke-static {}, Lcom/google/ads/internal/a;->a()Lcom/google/ads/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lam;->a()Lcom/google/ads/internal/a;

    move-result-object v0

    return-object v0
.end method
