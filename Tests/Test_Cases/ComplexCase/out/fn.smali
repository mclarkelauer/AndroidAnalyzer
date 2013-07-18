.class Lfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfl;

.field private final synthetic b:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lfl;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfn;->a:Lfl;

    iput-object p2, p0, Lfn;->b:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    iput-object p3, p0, Lfn;->c:Ljava/util/List;

    iput-object p4, p0, Lfn;->d:Ljava/util/List;

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 919
    iget-object v0, p0, Lfn;->b:Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lfn;->c:Ljava/util/List;

    iget-object v2, p0, Lfn;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 920
    return-void
.end method
