.class public Lcom/tndev/common/activity/GameListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tndev/common/activity/GameModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field public imageLoader:Lcom/tndev/common/utils/ImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    sget v0, Lcom/tndev/common/R$layout;->gameitem:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lcom/tndev/common/activity/GameListAdapter;->a:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/tndev/common/utils/ImageLoader;->get(Landroid/content/Context;)Lcom/tndev/common/utils/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/common/activity/GameListAdapter;->imageLoader:Lcom/tndev/common/utils/ImageLoader;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-nez p2, :cond_58

    .line 40
    iget-object v0, p0, Lcom/tndev/common/activity/GameListAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    sget v1, Lcom/tndev/common/R$layout;->gameitem:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 44
    new-instance v1, Lfo;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lfo;-><init>(Lcom/tndev/common/activity/GameListAdapter;Lfo;)V

    .line 46
    sget v0, Lcom/tndev/common/R$id;->txtGameName:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfo;->a:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/tndev/common/R$id;->txtGameDesc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lfo;->b:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/tndev/common/R$id;->imgGameLogo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lfo;->c:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_3a
    invoke-virtual {p0, p1}, Lcom/tndev/common/activity/GameListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/common/activity/GameModel;

    .line 56
    iget-object v2, v1, Lfo;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tndev/common/activity/GameModel;->gameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, v1, Lfo;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tndev/common/activity/GameModel;->gameDesc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/tndev/common/activity/GameListAdapter;->imageLoader:Lcom/tndev/common/utils/ImageLoader;

    iget-object v0, v0, Lcom/tndev/common/activity/GameModel;->gameLogoUrl:Ljava/lang/String;

    iget-object v1, v1, Lfo;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v1}, Lcom/tndev/common/utils/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 61
    return-object p2

    .line 52
    :cond_58
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfo;

    move-object v1, v0

    goto :goto_3a
.end method
