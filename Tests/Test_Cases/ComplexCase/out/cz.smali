.class Lcz;
.super Ldb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/StringMap",
        "<TV;>.db<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcy;


# direct methods
.method constructor <init>(Lcy;)V
    .registers 4
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcz;->a:Lcy;

    iget-object v0, p1, Lcy;->a:Lcom/google/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldb;-><init>(Lcom/google/gson/internal/StringMap;Lcv;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcz;->b()Lda;

    move-result-object v0

    iget-object v0, v0, Lda;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
