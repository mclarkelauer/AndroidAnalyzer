.class Ldd;
.super Ldb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.db<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldc;


# direct methods
.method constructor <init>(Ldc;)V
    .registers 4
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Ldd;->a:Ldc;

    iget-object v0, p1, Ldc;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldb;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Ldd;->b()Lda;

    move-result-object v0

    iget-object v0, v0, Lda;->b:Ljava/lang/Object;

    return-object v0
.end method
