.class public Ljd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/londatiga/android/QuickAction;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lnet/londatiga/android/QuickAction;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    iput p2, p0, Ljd;->b:I

    iput p3, p0, Ljd;->c:I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->a(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 184
    iget-object v0, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    invoke-static {v0}, Lnet/londatiga/android/QuickAction;->a(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    move-result-object v0

    iget-object v1, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    iget v2, p0, Ljd;->b:I

    iget v3, p0, Ljd;->c:I

    invoke-interface {v0, v1, v2, v3}, Lnet/londatiga/android/QuickAction$OnActionItemClickListener;->onItemClick(Lnet/londatiga/android/QuickAction;II)V

    .line 187
    :cond_17
    iget-object v0, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    iget v1, p0, Ljd;->b:I

    invoke-virtual {v0, v1}, Lnet/londatiga/android/QuickAction;->getActionItem(I)Lnet/londatiga/android/ActionItem;

    move-result-object v0

    invoke-virtual {v0}, Lnet/londatiga/android/ActionItem;->isSticky()Z

    move-result v0

    if-nez v0, :cond_30

    .line 188
    iget-object v0, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/londatiga/android/QuickAction;->a(Lnet/londatiga/android/QuickAction;Z)V

    .line 190
    iget-object v0, p0, Ljd;->a:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0}, Lnet/londatiga/android/QuickAction;->dismiss()V

    .line 192
    :cond_30
    return-void
.end method
