.class Lcom/pad/android/util/AdOptinView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$6(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$6(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 124
    :cond_11
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$2;->this$0:Lcom/pad/android/util/AdOptinView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pad/android/util/AdOptinView;->setVisibility(I)V

    .line 127
    :try_start_17
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_29

    .line 129
    :goto_28
    return-void

    .line 128
    :catch_29
    move-exception v0

    goto :goto_28
.end method
