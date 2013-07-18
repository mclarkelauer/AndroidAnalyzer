.class Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfl;

.field private final synthetic b:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lfl;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfm;->a:Lfl;

    iput-object p2, p0, Lfm;->b:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    iput-object p3, p0, Lfm;->c:Ljava/util/List;

    iput-object p4, p0, Lfm;->d:Ljava/util/List;

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 912
    iget-object v2, p0, Lfm;->b:Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lfm;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/billing/util/Purchase;

    iget-object v1, p0, Lfm;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tndev/billing/util/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/tndev/billing/util/Purchase;Lcom/tndev/billing/util/IabResult;)V

    .line 913
    return-void
.end method
