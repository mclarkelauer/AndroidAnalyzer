.class public Lnet/londatiga/android/QuickAction;
.super Lnet/londatiga/android/PopupWindows;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field public static final ANIM_AUTO:I = 0x5

.field public static final ANIM_GROW_FROM_CENTER:I = 0x3

.field public static final ANIM_GROW_FROM_LEFT:I = 0x1

.field public static final ANIM_GROW_FROM_RIGHT:I = 0x2

.field public static final ANIM_REFLECT:I = 0x4

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ScrollView;

.field private g:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

.field private h:Lnet/londatiga/android/QuickAction$OnDismissListener;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/londatiga/android/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->i:Ljava/util/List;

    .line 49
    iput v1, p0, Lnet/londatiga/android/QuickAction;->o:I

    .line 78
    iput p2, p0, Lnet/londatiga/android/QuickAction;->n:I

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    .line 82
    iget v0, p0, Lnet/londatiga/android/QuickAction;->n:I

    if-nez v0, :cond_28

    .line 83
    sget v0, Lnet/londatiga/android/R$layout;->popup_horizontal:I

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    .line 88
    :goto_22
    const/4 v0, 0x5

    iput v0, p0, Lnet/londatiga/android/QuickAction;->m:I

    .line 89
    iput v1, p0, Lnet/londatiga/android/QuickAction;->k:I

    .line 90
    return-void

    .line 85
    :cond_28
    sget v0, Lnet/londatiga/android/R$layout;->popup_vertical:I

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    goto :goto_22
.end method

.method public static synthetic a(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->g:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    return-object v0
.end method

.method private a(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 356
    sget v0, Lnet/londatiga/android/R$id;->arrow_up:I

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->b:Landroid/widget/ImageView;

    .line 357
    :goto_6
    sget v1, Lnet/londatiga/android/R$id;->arrow_up:I

    if-ne p1, v1, :cond_2a

    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->c:Landroid/widget/ImageView;

    .line 359
    :goto_c
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 361
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 367
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 368
    return-void

    .line 356
    :cond_27
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->c:Landroid/widget/ImageView;

    goto :goto_6

    .line 357
    :cond_2a
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->b:Landroid/widget/ImageView;

    goto :goto_c
.end method

.method private a(IIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 319
    iget v1, p0, Lnet/londatiga/android/QuickAction;->m:I

    packed-switch v1, :pswitch_data_7a

    .line 347
    :goto_f
    return-void

    .line 321
    :pswitch_10
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1a

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Left:I

    :goto_16
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_1a
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Left:I

    goto :goto_16

    .line 325
    :pswitch_1d
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_27

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Right:I

    :goto_23
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_27
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Right:I

    goto :goto_23

    .line 329
    :pswitch_2a
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_34

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Center:I

    :goto_30
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_34
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Center:I

    goto :goto_30

    .line 333
    :pswitch_37
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_41

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Reflect:I

    :goto_3d
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_41
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Reflect:I

    goto :goto_3d

    .line 337
    :pswitch_44
    div-int/lit8 v1, p1, 0x4

    if-gt v0, v1, :cond_55

    .line 338
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_52

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Left:I

    :goto_4e
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_52
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Left:I

    goto :goto_4e

    .line 339
    :cond_55
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_6c

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_6c

    .line 340
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_69

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Center:I

    :goto_65
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_69
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Center:I

    goto :goto_65

    .line 342
    :cond_6c
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_76

    sget v0, Lnet/londatiga/android/R$style;->Animations_PopUpMenu_Right:I

    :goto_72
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_f

    :cond_76
    sget v0, Lnet/londatiga/android/R$style;->Animations_PopDownMenu_Right:I

    goto :goto_72

    .line 319
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1d
        :pswitch_2a
        :pswitch_37
        :pswitch_44
    .end packed-switch
.end method

.method public static synthetic a(Lnet/londatiga/android/QuickAction;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lnet/londatiga/android/QuickAction;->j:Z

    return-void
.end method


# virtual methods
.method public addActionItem(Lnet/londatiga/android/ActionItem;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 149
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 156
    iget v0, p0, Lnet/londatiga/android/QuickAction;->n:I

    if-nez v0, :cond_b6

    .line 157
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    sget v1, Lnet/londatiga/android/R$layout;->action_item_horizontal:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 162
    :goto_1f
    sget v0, Lnet/londatiga/android/R$id;->iv_icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    sget v1, Lnet/londatiga/android/R$id;->tv_title:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    if-eqz v4, :cond_c1

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :goto_34
    if-eqz v3, :cond_c8

    .line 172
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_39
    iget v0, p0, Lnet/londatiga/android/QuickAction;->k:I

    .line 178
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getActionId()I

    move-result v1

    .line 180
    new-instance v3, Ljd;

    invoke-direct {v3, p0, v0, v1}, Ljd;-><init>(Lnet/londatiga/android/QuickAction;II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 198
    iget v0, p0, Lnet/londatiga/android/QuickAction;->n:I

    if-nez v0, :cond_76

    iget v0, p0, Lnet/londatiga/android/QuickAction;->k:I

    if-eqz v0, :cond_76

    .line 199
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    sget v1, Lnet/londatiga/android/R$layout;->horiz_separator:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->e:Landroid/view/ViewGroup;

    iget v3, p0, Lnet/londatiga/android/QuickAction;->l:I

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 208
    iget v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    .line 211
    :cond_76
    iget v0, p0, Lnet/londatiga/android/QuickAction;->n:I

    if-ne v0, v6, :cond_a2

    iget v0, p0, Lnet/londatiga/android/QuickAction;->k:I

    if-eqz v0, :cond_a2

    .line 212
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    sget v1, Lnet/londatiga/android/R$layout;->vertical_separator:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {v0, v7, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 218
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->e:Landroid/view/ViewGroup;

    iget v3, p0, Lnet/londatiga/android/QuickAction;->l:I

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 222
    iget v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    .line 225
    :cond_a2
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->e:Landroid/view/ViewGroup;

    iget v1, p0, Lnet/londatiga/android/QuickAction;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 227
    iget v0, p0, Lnet/londatiga/android/QuickAction;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/londatiga/android/QuickAction;->k:I

    .line 228
    iget v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/londatiga/android/QuickAction;->l:I

    .line 229
    return-void

    .line 159
    :cond_b6
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    sget v1, Lnet/londatiga/android/R$layout;->action_item_vertical:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_1f

    .line 168
    :cond_c1
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_34

    .line 174
    :cond_c8
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_39
.end method

.method public getActionItem(I)Lnet/londatiga/android/ActionItem;
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/ActionItem;

    return-object v0
.end method

.method public onDismiss()V
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lnet/londatiga/android/QuickAction;->j:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->h:Lnet/londatiga/android/QuickAction$OnDismissListener;

    if-eqz v0, :cond_d

    .line 383
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->h:Lnet/londatiga/android/QuickAction$OnDismissListener;

    invoke-interface {v0}, Lnet/londatiga/android/QuickAction$OnDismissListener;->onDismiss()V

    .line 385
    :cond_d
    return-void
.end method

.method public setAnimStyle(I)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lnet/londatiga/android/QuickAction;->m:I

    .line 132
    return-void
.end method

.method public setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->g:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    .line 141
    return-void
.end method

.method public setOnDismissListener(Lnet/londatiga/android/QuickAction$OnDismissListener;)V
    .registers 2
    .parameter

    .prologue
    .line 375
    invoke-virtual {p0, p0}, Lnet/londatiga/android/QuickAction;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 377
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->h:Lnet/londatiga/android/QuickAction$OnDismissListener;

    .line 378
    return-void
.end method

.method public setRootViewId(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 109
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->d:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    sget v1, Lnet/londatiga/android/R$id;->tracks:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->e:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    sget v1, Lnet/londatiga/android/R$id;->arrow_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->c:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    sget v1, Lnet/londatiga/android/R$id;->arrow_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->b:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    sget v1, Lnet/londatiga/android/R$id;->scroller:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->f:Landroid/widget/ScrollView;

    .line 120
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setContentView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public show(Landroid/view/View;)V
    .registers 13
    .parameter

    .prologue
    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0}, Lnet/londatiga/android/QuickAction;->preShow()V

    .line 240
    iput-boolean v1, p0, Lnet/londatiga/android/QuickAction;->j:Z

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    new-instance v6, Landroid/graphics/Rect;

    aget v2, v0, v1

    aget v4, v0, v3

    aget v5, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    aget v0, v0, v3

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    .line 246
    invoke-direct {v6, v2, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    .line 253
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 255
    iget v0, p0, Lnet/londatiga/android/QuickAction;->o:I

    if-nez v0, :cond_3c

    .line 256
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lnet/londatiga/android/QuickAction;->o:I

    .line 259
    :cond_3c
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 260
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    .line 263
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/londatiga/android/QuickAction;->o:I

    add-int/2addr v0, v2

    if-le v0, v7, :cond_9d

    .line 264
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/londatiga/android/QuickAction;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v2, v8

    sub-int/2addr v0, v2

    .line 265
    if-gez v0, :cond_64

    move v0, v1

    .line 267
    :cond_64
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v0

    move v10, v2

    move v2, v0

    move v0, v10

    .line 279
    :goto_6c
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 280
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v5, v9

    .line 282
    if-le v8, v9, :cond_ba

    move v5, v3

    .line 284
    :goto_75
    if-eqz v5, :cond_c1

    .line 285
    if-le v4, v8, :cond_bc

    .line 286
    const/16 v3, 0xf

    .line 287
    iget-object v4, p0, Lnet/londatiga/android/QuickAction;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v4, v3

    .line 301
    :goto_89
    if-eqz v5, :cond_cf

    sget v3, Lnet/londatiga/android/R$id;->arrow_down:I

    :goto_8d
    invoke-direct {p0, v3, v0}, Lnet/londatiga/android/QuickAction;->a(II)V

    .line 303
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-direct {p0, v7, v0, v5}, Lnet/londatiga/android/QuickAction;->a(IIZ)V

    .line 305
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v1, v2, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 306
    return-void

    .line 270
    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lnet/londatiga/android/QuickAction;->o:I

    if-le v0, v2, :cond_b7

    .line 271
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget v2, p0, Lnet/londatiga/android/QuickAction;->o:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 276
    :goto_ae
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v0

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_6c

    .line 273
    :cond_b7
    iget v0, v6, Landroid/graphics/Rect;->left:I

    goto :goto_ae

    :cond_ba
    move v5, v1

    .line 282
    goto :goto_75

    .line 290
    :cond_bc
    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    move v4, v3

    .line 292
    goto :goto_89

    .line 293
    :cond_c1
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 295
    if-le v4, v9, :cond_cd

    .line 296
    iget-object v4, p0, Lnet/londatiga/android/QuickAction;->f:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 297
    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_cd
    move v4, v3

    goto :goto_89

    .line 301
    :cond_cf
    sget v3, Lnet/londatiga/android/R$id;->arrow_up:I

    goto :goto_8d
.end method
