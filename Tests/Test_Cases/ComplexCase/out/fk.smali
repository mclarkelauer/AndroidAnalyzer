.class Lfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfj;

.field private final synthetic b:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

.field private final synthetic c:Lcom/tndev/billing/util/IabResult;

.field private final synthetic d:Lcom/tndev/billing/util/Inventory;


# direct methods
.method constructor <init>(Lfj;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Inventory;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfk;->a:Lfj;

    iput-object p2, p0, Lfk;->b:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    iput-object p3, p0, Lfk;->c:Lcom/tndev/billing/util/IabResult;

    iput-object p4, p0, Lfk;->d:Lcom/tndev/billing/util/Inventory;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 565
    iget-object v0, p0, Lfk;->b:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lfk;->c:Lcom/tndev/billing/util/IabResult;

    iget-object v2, p0, Lfk;->d:Lcom/tndev/billing/util/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Inventory;)V

    .line 566
    return-void
.end method
