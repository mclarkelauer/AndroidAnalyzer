.class public Lfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/tndev/common/activity/GameListAdapter;


# direct methods
.method private constructor <init>(Lcom/tndev/common/activity/GameListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lfo;->d:Lcom/tndev/common/activity/GameListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tndev/common/activity/GameListAdapter;Lfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lfo;-><init>(Lcom/tndev/common/activity/GameListAdapter;)V

    return-void
.end method
