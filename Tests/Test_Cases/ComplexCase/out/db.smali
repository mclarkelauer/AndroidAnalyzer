.class public abstract Ldb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda",
            "<TV;>;"
        }
    .end annotation
.end field

.field c:Lda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/StringMap;)V
    .registers 3
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Ldb;->d:Lcom/google/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iget-object v0, p0, Ldb;->d:Lcom/google/gson/internal/StringMap;

    invoke-static {v0}, Lcom/google/gson/internal/StringMap;->a(Lcom/google/gson/internal/StringMap;)Lda;

    move-result-object v0

    iget-object v0, v0, Lda;->e:Lda;

    iput-object v0, p0, Ldb;->b:Lda;

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Ldb;->c:Lda;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/StringMap;Lcv;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1}, Ldb;-><init>(Lcom/google/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method final b()Lda;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lda",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Ldb;->b:Lda;

    .line 384
    iget-object v1, p0, Ldb;->d:Lcom/google/gson/internal/StringMap;

    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->a(Lcom/google/gson/internal/StringMap;)Lda;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 385
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 387
    :cond_10
    iget-object v1, v0, Lda;->e:Lda;

    iput-object v1, p0, Ldb;->b:Lda;

    .line 388
    iput-object v0, p0, Ldb;->c:Lda;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Ldb;->b:Lda;

    iget-object v1, p0, Ldb;->d:Lcom/google/gson/internal/StringMap;

    invoke-static {v1}, Lcom/google/gson/internal/StringMap;->a(Lcom/google/gson/internal/StringMap;)Lda;

    move-result-object v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Ldb;->c:Lda;

    if-nez v0, :cond_a

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 395
    :cond_a
    iget-object v0, p0, Ldb;->d:Lcom/google/gson/internal/StringMap;

    iget-object v1, p0, Ldb;->c:Lda;

    iget-object v1, v1, Lda;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Ldb;->c:Lda;

    .line 397
    return-void
.end method
