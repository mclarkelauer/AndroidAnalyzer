.class Lcom/pad/android/xappad/AdController$1;
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
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$1;->this$0:Lcom/pad/android/xappad/AdController;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdOptin()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$1;->this$0:Lcom/pad/android/xappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadNotification()V

    .line 327
    return-void
.end method
