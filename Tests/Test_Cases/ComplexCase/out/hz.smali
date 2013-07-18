.class public Lhz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/GalleryActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhz;->a:Lcom/tndev/funnyframes/GalleryActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lhz;->a:Lcom/tndev/funnyframes/GalleryActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/GalleryActivity;->a(Lcom/tndev/funnyframes/GalleryActivity;)V

    .line 86
    iget-object v0, p0, Lhz;->a:Lcom/tndev/funnyframes/GalleryActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/GalleryActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    const/4 v0, 0x0

    return v0
.end method
