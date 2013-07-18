.class Lie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lid;


# direct methods
.method constructor <init>(Lid;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lie;->a:Lid;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lie;->a:Lid;

    invoke-static {v0}, Lid;->a(Lid;)Lcom/tndev/funnyframes/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/MainActivity;->a(Lcom/tndev/funnyframes/MainActivity;)V

    .line 34
    return-void
.end method
