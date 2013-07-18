.class public Lhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 1108
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1061
    :pswitch_8
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->c(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1065
    :pswitch_e
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->d(Lcom/tndev/funnyframes/EditActivity;)Lhy;

    move-result-object v0

    sget-object v1, Lhy;->b:Lhy;

    if-ne v0, v1, :cond_27

    .line 1066
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->e(Lcom/tndev/funnyframes/EditActivity;)V

    .line 1069
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->f(Lcom/tndev/funnyframes/EditActivity;)Lnet/londatiga/android/QuickAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    goto :goto_7

    .line 1072
    :cond_27
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->g(Lcom/tndev/funnyframes/EditActivity;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1073
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->h(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1076
    :cond_35
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->f(Lcom/tndev/funnyframes/EditActivity;)Lnet/londatiga/android/QuickAction;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    goto :goto_7

    .line 1082
    :pswitch_3f
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Z)V

    goto :goto_7

    .line 1085
    :pswitch_46
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Z)V

    goto :goto_7

    .line 1088
    :pswitch_4d
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->d(Lcom/tndev/funnyframes/EditActivity;)Lhy;

    move-result-object v0

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_5d

    .line 1089
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->i(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1091
    :cond_5d
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->e(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1095
    :pswitch_63
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->d(Lcom/tndev/funnyframes/EditActivity;)Lhy;

    move-result-object v0

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_73

    .line 1096
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->j(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1099
    :cond_73
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->k(Lcom/tndev/funnyframes/EditActivity;)V

    goto :goto_7

    .line 1103
    :pswitch_79
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->d(Lcom/tndev/funnyframes/EditActivity;)Lhy;

    move-result-object v0

    sget-object v1, Lhy;->a:Lhy;

    if-ne v0, v1, :cond_7

    .line 1104
    iget-object v0, p0, Lhn;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->i:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1059
    :pswitch_data_8c
    .packed-switch 0x7f090007
        :pswitch_e
        :pswitch_4d
        :pswitch_8
        :pswitch_79
        :pswitch_63
        :pswitch_7
        :pswitch_3f
        :pswitch_46
    .end packed-switch
.end method
