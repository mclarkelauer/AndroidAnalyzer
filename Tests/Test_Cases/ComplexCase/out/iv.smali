.class public Liv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/ResultActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/ResultActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Liv;->a:Lcom/tndev/funnyframes/ResultActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Liv;->a:Lcom/tndev/funnyframes/ResultActivity;

    invoke-virtual {v0}, Lcom/tndev/funnyframes/ResultActivity;->finish()V

    .line 277
    return-void
.end method
