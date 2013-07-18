.class public Lcom/tndev/common/activity/MoreGameActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final gameUrl:Ljava/lang/String; = "http://twopx-christmasframes.appspot.com/data/apps.dat"


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field public b:Landroid/os/Handler;

.field public c:Lcom/tndev/common/activity/GameListAdapter;

.field d:Landroid/widget/ListView;

.field e:Ljava/lang/String;

.field f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "com.tndev.hdframes"

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->e:Ljava/lang/String;

    .line 159
    new-instance v0, Lfp;

    invoke-direct {v0, p0}, Lfp;-><init>(Lcom/tndev/common/activity/MoreGameActivity;)V

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->f:Landroid/os/Handler$Callback;

    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/tndev/common/activity/MoreGameActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/tndev/common/activity/MoreGameActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/tndev/common/activity/GameListAdapter;

    invoke-direct {v0, p0}, Lcom/tndev/common/activity/GameListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->c:Lcom/tndev/common/activity/GameListAdapter;

    .line 125
    invoke-direct {p0, p1}, Lcom/tndev/common/activity/MoreGameActivity;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 131
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tndev/common/activity/MoreGameActivity;->c:Lcom/tndev/common/activity/GameListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    return-void

    .line 127
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tndev/common/activity/GameModel;

    .line 128
    iget-object v2, p0, Lcom/tndev/common/activity/MoreGameActivity;->c:Lcom/tndev/common/activity/GameListAdapter;

    invoke-virtual {v2, v0}, Lcom/tndev/common/activity/GameListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/common/activity/GameModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_12

    .line 154
    return-object v1

    .line 142
    :cond_12
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 144
    new-instance v4, Lcom/tndev/common/activity/GameModel;

    invoke-direct {v4}, Lcom/tndev/common/activity/GameModel;-><init>()V

    .line 145
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tndev/common/activity/GameModel;->gameName:Ljava/lang/String;

    .line 146
    const-string v5, "desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tndev/common/activity/GameModel;->gameDesc:Ljava/lang/String;

    .line 147
    const-string v5, "logo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tndev/common/activity/GameModel;->gameLogoUrl:Ljava/lang/String;

    .line 148
    const-string v5, "package"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/tndev/common/activity/GameModel;->packageId:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/tndev/common/activity/MoreGameActivity;->e:Ljava/lang/String;

    iget-object v5, v4, Lcom/tndev/common/activity/GameModel;->packageId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 151
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tndev/common/activity/MoreGameActivity;->requestWindowFeature(I)Z

    .line 59
    sget v0, Lcom/tndev/common/R$layout;->moregame:I

    invoke-virtual {p0, v0}, Lcom/tndev/common/activity/MoreGameActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/tndev/common/activity/MoreGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PACKAGE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->e:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->e:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->e:Ljava/lang/String;

    .line 66
    :cond_20
    sget v0, Lcom/tndev/common/R$id;->gameList:I

    invoke-virtual {p0, v0}, Lcom/tndev/common/activity/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->d:Landroid/widget/ListView;

    .line 67
    sget v0, Lcom/tndev/common/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/tndev/common/activity/MoreGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lfs;

    invoke-direct {v1, p0}, Lfs;-><init>(Lcom/tndev/common/activity/MoreGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    const-string v1, "More Games"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading game list, Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tndev/common/activity/MoreGameActivity;->f:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->b:Landroid/os/Handler;

    .line 81
    invoke-virtual {p0}, Lcom/tndev/common/activity/MoreGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tndev/common/utils/NetworkUtils;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lft;

    invoke-direct {v1, p0}, Lft;-><init>(Lcom/tndev/common/activity/MoreGameActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 108
    :goto_72
    iget-object v0, p0, Lcom/tndev/common/activity/MoreGameActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lfv;

    invoke-direct {v1, p0}, Lfv;-><init>(Lcom/tndev/common/activity/MoreGameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    return-void

    .line 99
    :cond_7d
    const-string v0, "Can not connecto to the Internet."

    new-instance v1, Lfu;

    invoke-direct {v1, p0}, Lfu;-><init>(Lcom/tndev/common/activity/MoreGameActivity;)V

    .line 105
    const/4 v2, 0x0

    .line 99
    invoke-static {p0, v0, v1, v2}, Lcom/tndev/common/utils/DialogUtils;->alert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_72
.end method
