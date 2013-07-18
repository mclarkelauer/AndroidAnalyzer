.class Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/pad/android/util/AdOptinView;


# direct methods
.method constructor <init>(Lcom/pad/android/util/AdOptinView;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelclicked()V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    const-string v1, "SD_APP_OPTIN"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #calls: Lcom/pad/android/util/AdOptinView;->closeView()V
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$1(Lcom/pad/android/util/AdOptinView;)V

    .line 157
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 159
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 161
    :cond_38
    return-void
.end method

.method public okclicked()V
    .registers 6

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Preference"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    const-string v1, "SD_APP_OPTIN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v1, "SD_APP_OPTIN_SHOWN"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #calls: Lcom/pad/android/util/AdOptinView;->closeView()V
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$1(Lcom/pad/android/util/AdOptinView;)V

    .line 143
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 145
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;->this$0:Lcom/pad/android/util/AdOptinView;

    #getter for: Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;
    invoke-static {v0}, Lcom/pad/android/util/AdOptinView;->access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 147
    :cond_47
    return-void
.end method
