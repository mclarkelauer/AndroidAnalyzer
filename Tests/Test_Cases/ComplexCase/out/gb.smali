.class public Lgb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/tndev/common/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/tndev/common/utils/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lgb;->c:Lcom/tndev/common/utils/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lgb;->a:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lgb;->b:Landroid/widget/ImageView;

    .line 86
    return-void
.end method
