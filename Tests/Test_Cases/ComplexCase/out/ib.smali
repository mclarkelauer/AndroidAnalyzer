.class public Lib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lib;->a:Lcom/tndev/funnyframes/GalleryActivity;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 183
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lib;->a:Lcom/tndev/funnyframes/GalleryActivity;

    const-class v3, Lcom/tndev/funnyframes/ResultActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    const-string v2, "IMAGE_DATA"

    iget-object v3, p0, Lib;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v3}, Lcom/tndev/funnyframes/GalleryActivity;->d(Lcom/tndev/funnyframes/GalleryActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lib;->a:Lcom/tndev/funnyframes/GalleryActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tndev/funnyframes/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    return-void
.end method
