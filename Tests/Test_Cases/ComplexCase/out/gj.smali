.class public Lgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;


# direct methods
.method public constructor <init>(Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lgj;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 407
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 392
    :pswitch_9
    iget-object v0, p0, Lgj;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a:I

    .line 393
    iget-object v0, p0, Lgj;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->b:I

    goto :goto_7

    .line 397
    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 400
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lgj;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget v4, v4, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->a:I

    sub-int/2addr v1, v4

    add-int/2addr v1, v3

    .line 401
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lgj;->a:Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;

    iget v4, v4, Lcom/tndev/custom/speechballoon/dlg/SpeechBalloonEditDlg;->b:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 402
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 403
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 390
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_1c
    .end packed-switch
.end method
