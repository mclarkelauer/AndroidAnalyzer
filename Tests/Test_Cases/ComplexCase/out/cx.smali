.class Lcx;
.super Ldb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.db<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcw;


# direct methods
.method constructor <init>(Lcw;)V
    .registers 4
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcx;->a:Lcw;

    iget-object v0, p1, Lcw;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldb;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lcx;->b()Lda;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcx;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
