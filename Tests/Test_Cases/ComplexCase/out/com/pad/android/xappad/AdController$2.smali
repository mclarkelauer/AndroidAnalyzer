.class Lcom/pad/android/xappad/AdController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pad/android/listener/AdOptinListener;


# instance fields
.field final synthetic this$0:Lcom/pad/android/xappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/xappad/AdController;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$2;->this$0:Lcom/pad/android/xappad/AdController;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdOptin()V
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$2;->this$0:Lcom/pad/android/xappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadIcon()V

    .line 868
    return-void
.end method
