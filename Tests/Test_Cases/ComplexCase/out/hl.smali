.class Lhl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lhj;


# direct methods
.method constructor <init>(Lhj;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhl;->a:Lhj;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1043
    iget-object v0, p0, Lhl;->a:Lhj;

    invoke-static {v0}, Lhj;->a(Lhj;)Lcom/tndev/funnyframes/EditActivity;

    move-result-object v0

    const-string v1, "com.tndev.kidsframehdpro"

    invoke-static {v0, v1}, Lcom/tndev/common/utils/ActivityUtils;->openMarket(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1044
    return-void
.end method
