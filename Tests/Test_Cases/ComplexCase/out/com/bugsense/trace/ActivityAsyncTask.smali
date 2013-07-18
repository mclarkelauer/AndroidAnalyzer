.class public abstract Lcom/bugsense/trace/ActivityAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Connect:",
        "Ljava/lang/Object;",
        "Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field protected volatile mWrapped:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TConnect;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConnect;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->a:Z

    invoke-virtual {p0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public connectTo(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConnect;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->mWrapped:Ljava/lang/Object;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/bugsense/trace/ActivityAsyncTask;->mWrapped:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->mWrapped:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->onPreExecute()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/bugsense/trace/ActivityAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->a:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->a:Z

    iget-object v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bugsense/trace/ActivityAsyncTask;->processPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->b:Ljava/lang/Object;

    goto :goto_1d
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->mWrapped:Ljava/lang/Object;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->a:Z

    invoke-virtual {p0, p1}, Lcom/bugsense/trace/ActivityAsyncTask;->processPostExecute(Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lcom/bugsense/trace/ActivityAsyncTask;->b:Ljava/lang/Object;

    goto :goto_d
.end method

.method public postProcessingDone()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bugsense/trace/ActivityAsyncTask;->a:Z

    return v0
.end method

.method protected abstract processPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
