.class public Lcom/pad/android/util/AdOptinView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private layout:Landroid/widget/RelativeLayout;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private oListener:Lcom/pad/android/listener/AdOptinListener;

.field private optinUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 37
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinView;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/util/AdOptinView;)V
    .registers 1
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinView;->closeView()V

    return-void
.end method

.method static synthetic access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pad/android/util/AdOptinView;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pad/android/util/AdOptinView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pad/android/util/AdOptinView;Landroid/app/ProgressDialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView;->loadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private closeView()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/util/AdOptinView$2;

    invoke-direct {v1, p0}, Lcom/pad/android/util/AdOptinView$2;-><init>(Lcom/pad/android/util/AdOptinView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method private initialize()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/pad/android/util/AdOptinView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    new-instance v2, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;

    invoke-direct {v2, p0}, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;-><init>(Lcom/pad/android/util/AdOptinView;)V

    const-string v3, "LBOPTIN"

    invoke-virtual {p0, v2, v3}, Lcom/pad/android/util/AdOptinView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_21

    .line 53
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 59
    :cond_21
    new-instance v0, Lcom/pad/android/util/AdOptinView$1;

    invoke-direct {v0, p0}, Lcom/pad/android/util/AdOptinView$1;-><init>(Lcom/pad/android/util/AdOptinView;)V

    invoke-virtual {p0, v0}, Lcom/pad/android/util/AdOptinView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pad/android/util/AdOptinView;->loadUrl(Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    .line 95
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 99
    iget-object v3, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 101
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 102
    const v0, 0x1020002

    invoke-virtual {v3, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 103
    if-le v0, v4, :cond_8c

    sub-int/2addr v0, v4

    .line 105
    :goto_6b
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 106
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v4

    sub-int v0, v2, v0

    .line 108
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void

    :cond_8c
    move v0, v1

    .line 103
    goto :goto_6b
.end method
