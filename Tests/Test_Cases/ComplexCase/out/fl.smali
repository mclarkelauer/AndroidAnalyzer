.class public Lfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tndev/billing/util/IabHelper;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

.field private final synthetic d:Landroid/os/Handler;

.field private final synthetic e:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;


# direct methods
.method public constructor <init>(Lcom/tndev/billing/util/IabHelper;Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfl;->a:Lcom/tndev/billing/util/IabHelper;

    iput-object p2, p0, Lfl;->b:Ljava/util/List;

    iput-object p3, p0, Lfl;->c:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lfl;->d:Landroid/os/Handler;

    iput-object p5, p0, Lfl;->e:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 897
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 898
    iget-object v0, p0, Lfl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 908
    iget-object v0, p0, Lfl;->a:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/tndev/billing/util/IabHelper;->a()V

    .line 909
    iget-object v0, p0, Lfl;->c:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_28

    .line 910
    iget-object v0, p0, Lfl;->d:Landroid/os/Handler;

    new-instance v2, Lfm;

    iget-object v3, p0, Lfl;->c:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    iget-object v4, p0, Lfl;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lfm;-><init>(Lfl;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_28
    iget-object v0, p0, Lfl;->e:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_3a

    .line 917
    iget-object v0, p0, Lfl;->d:Landroid/os/Handler;

    new-instance v2, Lfn;

    iget-object v3, p0, Lfl;->e:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v4, p0, Lfl;->b:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v1}, Lfn;-><init>(Lfl;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 923
    :cond_3a
    return-void

    .line 898
    :cond_3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/billing/util/Purchase;

    .line 900
    :try_start_41
    iget-object v3, p0, Lfl;->a:Lcom/tndev/billing/util/IabHelper;

    invoke-virtual {v3, v0}, Lcom/tndev/billing/util/IabHelper;->a(Lcom/tndev/billing/util/Purchase;)V

    .line 901
    new-instance v3, Lcom/tndev/billing/util/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successful consume of sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tndev/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lcom/tndev/billing/util/IabException; {:try_start_41 .. :try_end_62} :catch_63

    goto :goto_b

    .line 903
    :catch_63
    move-exception v0

    .line 904
    invoke-virtual {v0}, Lcom/tndev/billing/util/IabException;->getResult()Lcom/tndev/billing/util/IabResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method
