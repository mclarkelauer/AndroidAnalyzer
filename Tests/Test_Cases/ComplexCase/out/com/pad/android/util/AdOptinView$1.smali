.class Lcom/pad/android/util/AdOptinView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    .line 59
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinView;->requestFocus(I)Z

    .line 86
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 88
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 90
    :cond_24
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$3(Lcom/pad/android/util/AdOptinView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 66
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 67
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_23
    :goto_23
    return-void

    .line 69
    :cond_24
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_23

    .line 73
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    iget-object v1, p0, Lcom/pad/android/util/AdOptinView$1;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "Loading....Please wait!"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/pad/android/util/AdOptinView;->access$5(Lcom/pad/android/util/AdOptinView;Landroid/app/ProgressDialog;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_4d

    goto :goto_23

    .line 75
    :catch_4d
    move-exception v0

    .line 77
    const-string v1, "LBADController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when trying to show dialog - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method
