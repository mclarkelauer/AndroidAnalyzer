.class public Lcom/tndev/funnyframes/HelpDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/tndev/funnyframes/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/HelpDialog;->requestWindowFeature(I)Z

    .line 27
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/HelpDialog;->setContentView(I)V

    .line 29
    const-string v0, "How to use"

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/HelpDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/tndev/funnyframes/HelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    new-instance v1, Lic;

    invoke-direct {v1, p0}, Lic;-><init>(Lcom/tndev/funnyframes/HelpDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public show()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 43
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/tndev/funnyframes/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 45
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 48
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 50
    invoke-virtual {p0}, Lcom/tndev/funnyframes/HelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 51
    return-void
.end method
