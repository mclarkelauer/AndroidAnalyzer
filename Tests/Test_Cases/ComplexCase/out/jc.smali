.class public Ljc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lnet/londatiga/android/PopupWindows;


# direct methods
.method public constructor <init>(Lnet/londatiga/android/PopupWindows;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljc;->a:Lnet/londatiga/android/PopupWindows;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 41
    iget-object v0, p0, Ljc;->a:Lnet/londatiga/android/PopupWindows;

    iget-object v0, v0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
