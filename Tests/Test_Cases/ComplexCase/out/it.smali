.class public Lit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/ResultActivity;

.field private final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/ResultActivity;Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lit;->a:Lcom/tndev/funnyframes/ResultActivity;

    iput-object p2, p0, Lit;->b:Landroid/content/SharedPreferences;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lit;->a:Lcom/tndev/funnyframes/ResultActivity;

    const-string v1, "com.tndev.funnyframes"

    invoke-static {v0, v1}, Lcom/tndev/common/utils/ActivityUtils;->openMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lit;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "RATE_IT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method
