.class Lil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lij;


# direct methods
.method constructor <init>(Lij;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lil;->a:Lij;

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lil;->a:Lij;

    invoke-static {v0}, Lij;->a(Lij;)Lcom/tndev/funnyframes/MenuActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/funnyframes/MenuActivity;->g(Lcom/tndev/funnyframes/MenuActivity;)V

    .line 502
    iget-object v0, p0, Lil;->a:Lij;

    invoke-static {v0}, Lij;->a(Lij;)Lcom/tndev/funnyframes/MenuActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tndev/funnyframes/MenuActivity;->finish()V

    .line 503
    return-void
.end method
