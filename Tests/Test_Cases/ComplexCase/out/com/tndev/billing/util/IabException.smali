.class public Lcom/tndev/billing/util/IabException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/tndev/billing/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tndev/billing/util/IabException;-><init>(Lcom/tndev/billing/util/IabResult;)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/tndev/billing/util/IabException;-><init>(Lcom/tndev/billing/util/IabResult;Ljava/lang/Exception;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/tndev/billing/util/IabResult;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tndev/billing/util/IabException;-><init>(Lcom/tndev/billing/util/IabResult;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/tndev/billing/util/IabResult;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/tndev/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lcom/tndev/billing/util/IabException;->a:Lcom/tndev/billing/util/IabResult;

    .line 36
    return-void
.end method


# virtual methods
.method public getResult()Lcom/tndev/billing/util/IabResult;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tndev/billing/util/IabException;->a:Lcom/tndev/billing/util/IabResult;

    return-object v0
.end method
