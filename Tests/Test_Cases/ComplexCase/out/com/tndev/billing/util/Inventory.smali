.class public Lcom/tndev/billing/util/Inventory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tndev/billing/util/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tndev/billing/util/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/billing/util/Inventory;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method a(Lcom/tndev/billing/util/Purchase;)V
    .registers 4
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tndev/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method a(Lcom/tndev/billing/util/SkuDetails;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tndev/billing/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public erasePurchase(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_d
    return-void
.end method

.method public getPurchase(Ljava/lang/String;)Lcom/tndev/billing/util/Purchase;
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/billing/util/Purchase;

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/tndev/billing/util/SkuDetails;
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/billing/util/SkuDetails;

    return-object v0
.end method

.method public hasDetails(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPurchase(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tndev/billing/util/Inventory;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
