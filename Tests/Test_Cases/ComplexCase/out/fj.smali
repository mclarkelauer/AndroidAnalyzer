.class public Lfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/billing/util/IabHelper;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Landroid/os/Handler;

.field private final synthetic e:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method public constructor <init>(Lcom/tndev/billing/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfj;->a:Lcom/tndev/billing/util/IabHelper;

    iput-boolean p2, p0, Lfj;->b:Z

    iput-object p3, p0, Lfj;->c:Ljava/util/List;

    iput-object p4, p0, Lfj;->d:Landroid/os/Handler;

    iput-object p5, p0, Lfj;->e:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 550
    new-instance v1, Lcom/tndev/billing/util/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 551
    const/4 v0, 0x0

    .line 553
    :try_start_9
    iget-object v2, p0, Lfj;->a:Lcom/tndev/billing/util/IabHelper;

    iget-boolean v3, p0, Lfj;->b:Z

    iget-object v4, p0, Lfj;->c:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/tndev/billing/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/tndev/billing/util/Inventory;
    :try_end_12
    .catch Lcom/tndev/billing/util/IabException; {:try_start_9 .. :try_end_12} :catch_25

    move-result-object v0

    .line 559
    :goto_13
    iget-object v2, p0, Lfj;->a:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v2}, Lcom/tndev/billing/util/IabHelper;->a()V

    .line 563
    iget-object v2, p0, Lfj;->d:Landroid/os/Handler;

    new-instance v3, Lfk;

    iget-object v4, p0, Lfj;->e:Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {v3, p0, v4, v1, v0}, Lfk;-><init>(Lfj;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    return-void

    .line 555
    :catch_25
    move-exception v1

    .line 556
    invoke-virtual {v1}, Lcom/tndev/billing/util/IabException;->getResult()Lcom/tndev/billing/util/IabResult;

    move-result-object v1

    goto :goto_13
.end method
