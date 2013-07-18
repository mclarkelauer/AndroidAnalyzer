.class Lhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhu;


# direct methods
.method constructor <init>(Lhu;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhv;->a:Lhu;

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1253
    iget-object v0, p0, Lhv;->a:Lhu;

    invoke-static {v0}, Lhu;->a(Lhu;)Lcom/tndev/funnyframes/EditActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->c(Lcom/tndev/funnyframes/EditActivity;)V

    .line 1254
    return-void
.end method
