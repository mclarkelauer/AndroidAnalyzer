.class public Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tndev/funnyframes/EditActivity;


# direct methods
.method public constructor <init>(Lcom/tndev/funnyframes/EditActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x4120

    .line 1117
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->d(Lcom/tndev/funnyframes/EditActivity;)Lhy;

    move-result-object v0

    sget-object v1, Lhy;->b:Lhy;

    if-ne v0, v1, :cond_e

    .line 1158
    :goto_d
    return v4

    .line 1120
    :cond_e
    check-cast p1, Landroid/widget/ImageView;

    .line 1123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_f4

    .line 1157
    :cond_19
    :goto_19
    :pswitch_19
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_d

    .line 1125
    :pswitch_23
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1126
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1127
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    sget-object v1, Lhx;->b:Lhx;

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Lhx;)V

    goto :goto_19

    .line 1130
    :pswitch_47
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1, p2}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, v0, Lcom/tndev/funnyframes/EditActivity;->f:F

    .line 1131
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget v0, v0, Lcom/tndev/funnyframes/EditActivity;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_19

    .line 1132
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v0, v0, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1133
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->e:Landroid/graphics/PointF;

    invoke-static {v0, v1, p2}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 1134
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    sget-object v1, Lhx;->c:Lhx;

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Lhx;)V

    goto :goto_19

    .line 1139
    :pswitch_77
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    sget-object v1, Lhx;->a:Lhx;

    invoke-static {v0, v1}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Lhx;)V

    goto :goto_19

    .line 1142
    :pswitch_7f
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->m(Lcom/tndev/funnyframes/EditActivity;)Lhx;

    move-result-object v0

    sget-object v1, Lhx;->b:Lhx;

    if-ne v0, v1, :cond_b7

    .line 1143
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v1, v1, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1144
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v2, v2, Lcom/tndev/funnyframes/EditActivity;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 1145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v3, v3, Lcom/tndev/funnyframes/EditActivity;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 1144
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_19

    .line 1146
    :cond_b7
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0}, Lcom/tndev/funnyframes/EditActivity;->m(Lcom/tndev/funnyframes/EditActivity;)Lhx;

    move-result-object v0

    sget-object v1, Lhx;->c:Lhx;

    if-ne v0, v1, :cond_19

    .line 1147
    iget-object v0, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v0, p2}, Lcom/tndev/funnyframes/EditActivity;->a(Lcom/tndev/funnyframes/EditActivity;Landroid/view/MotionEvent;)F

    move-result v0

    .line 1148
    cmpl-float v1, v0, v2

    if-lez v1, :cond_19

    .line 1149
    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v2, v2, Lcom/tndev/funnyframes/EditActivity;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1150
    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget v1, v1, Lcom/tndev/funnyframes/EditActivity;->f:F

    div-float/2addr v0, v1

    .line 1151
    iget-object v1, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    invoke-static {v1}, Lcom/tndev/funnyframes/EditActivity;->l(Lcom/tndev/funnyframes/EditActivity;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v2, v2, Lcom/tndev/funnyframes/EditActivity;->e:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lho;->a:Lcom/tndev/funnyframes/EditActivity;

    iget-object v3, v3, Lcom/tndev/funnyframes/EditActivity;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_19

    .line 1123
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_23
        :pswitch_77
        :pswitch_7f
        :pswitch_19
        :pswitch_19
        :pswitch_47
        :pswitch_77
    .end packed-switch
.end method
