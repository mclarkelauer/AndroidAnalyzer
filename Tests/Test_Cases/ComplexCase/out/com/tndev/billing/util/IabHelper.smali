.class public Lcom/tndev/billing/util/IabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field public c:Z

.field d:Z

.field e:Ljava/lang/String;

.field public f:Landroid/content/Context;

.field public g:Lcom/android/vending/billing/IInAppBillingService;

.field h:Landroid/content/ServiceConnection;

.field i:I

.field j:Ljava/lang/String;

.field k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/tndev/billing/util/IabHelper;->a:Z

    .line 91
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->b:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/tndev/billing/util/IabHelper;->c:Z

    .line 98
    iput-boolean v1, p0, Lcom/tndev/billing/util/IabHelper;->d:Z

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->e:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->j:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/tndev/billing/util/IabHelper;->j:Ljava/lang/String;

    .line 170
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 689
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 692
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 693
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    .line 700
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 702
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_36

    .line 703
    rsub-int v0, p0, -0x3e8

    .line 704
    if-ltz v0, :cond_1e

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    aget-object v0, v1, v0

    .line 710
    :goto_1d
    return-object v0

    .line 705
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 707
    :cond_36
    if-ltz p0, :cond_3b

    array-length v1, v0

    if-lt p0, v1, :cond_53

    .line 708
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 710
    :cond_53
    aget-object v0, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .registers 6
    .parameter

    .prologue
    .line 743
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 744
    if-nez v0, :cond_13

    .line 745
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    .line 749
    :goto_12
    return v0

    .line 748
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_12

    .line 749
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_12

    .line 751
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 753
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .registers 6
    .parameter

    .prologue
    .line 727
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 728
    if-nez v0, :cond_f

    .line 729
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_e
    return v0

    .line 732
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_e

    .line 733
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_e

    .line 735
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 737
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Lcom/tndev/billing/util/Inventory;)I
    .registers 14
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 783
    const-string v0, "Querying owned items..."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x0

    move v1, v3

    .line 790
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 791
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 792
    const-string v6, "inapp"

    .line 791
    invoke-interface {v2, v4, v5, v6, v0}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 794
    invoke-virtual {p0, v6}, Lcom/tndev/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Owned items response: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 796
    if-eqz v0, :cond_75

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    move v3, v0

    .line 842
    :cond_74
    :goto_74
    return v3

    .line 800
    :cond_75
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 801
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 802
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 803
    :cond_8d
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 804
    const/16 v3, -0x3ea

    goto :goto_74

    .line 808
    :cond_95
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    .line 807
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 810
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 809
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 812
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 811
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 814
    :goto_a9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_d2

    .line 838
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_157

    .line 842
    if-eqz v4, :cond_74

    const/16 v3, -0x3eb

    goto :goto_74

    .line 815
    :cond_d2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 816
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 817
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 818
    iget-object v10, p0, Lcom/tndev/billing/util/IabHelper;->j:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lcom/tndev/billing/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12c

    .line 819
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sku is owned: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 820
    new-instance v2, Lcom/tndev/billing/util/Purchase;

    invoke-direct {v2, v0, v1}, Lcom/tndev/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v2}, Lcom/tndev/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 823
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->e(Ljava/lang/String;)V

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Purchase data: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 828
    :cond_124
    invoke-virtual {p1, v2}, Lcom/tndev/billing/util/Inventory;->a(Lcom/tndev/billing/util/Purchase;)V

    .line 814
    :goto_127
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_a9

    .line 831
    :cond_12c
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->e(Ljava/lang/String;)V

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "   Purchase data: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "   Signature: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 834
    const/4 v4, 0x1

    goto :goto_127

    :cond_157
    move v1, v4

    goto/16 :goto_20
.end method

.method a(Lcom/tndev/billing/util/Inventory;Ljava/util/List;)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tndev/billing/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 846
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    invoke-virtual {p1}, Lcom/tndev/billing/util/Inventory;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 849
    if-eqz p2, :cond_17

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 851
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_24

    .line 852
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    move v0, v1

    .line 881
    :goto_23
    return v0

    .line 856
    :cond_24
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 857
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 858
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 859
    const-string v5, "inapp"

    .line 858
    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 861
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 862
    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 863
    if-eqz v0, :cond_62

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    goto :goto_23

    .line 868
    :cond_62
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 869
    const/16 v0, -0x3ea

    goto :goto_23

    .line 874
    :cond_6a
    const-string v2, "DETAILS_LIST"

    .line 873
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7c

    move v0, v1

    .line 881
    goto :goto_23

    .line 876
    :cond_7c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 877
    new-instance v3, Lcom/tndev/billing/util/SkuDetails;

    invoke-direct {v3, v0}, Lcom/tndev/billing/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1, v3}, Lcom/tndev/billing/util/Inventory;->a(Lcom/tndev/billing/util/SkuDetails;)V

    goto :goto_74
.end method

.method public a()V
    .registers 3

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tndev/billing/util/IabHelper;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 776
    const-string v0, ""

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->e:Ljava/lang/String;

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->d:Z

    .line 778
    return-void
.end method

.method public a(Lcom/tndev/billing/util/Purchase;)V
    .registers 7
    .parameter

    .prologue
    .line 593
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 619
    :goto_8
    return-void

    .line 598
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/tndev/billing/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {p1}, Lcom/tndev/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 600
    if-eqz v0, :cond_1b

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 601
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t consume "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 602
    new-instance v0, Lcom/tndev/billing/util/IabException;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-direct {v0, v2, v1}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_54} :catch_54

    .line 616
    :catch_54
    move-exception v0

    .line 617
    new-instance v1, Lcom/tndev/billing/util/IabException;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 606
    :cond_6c
    :try_start_6c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consuming sku: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 608
    if-nez v0, :cond_ab

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Successfully consumed sku: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 612
    :cond_ab
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error consuming consuming sku "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 613
    new-instance v2, Lcom/tndev/billing/util/IabException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error consuming sku "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_e0} :catch_54
.end method

.method a(Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/billing/util/Purchase;",
            ">;",
            "Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 888
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 891
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 925
    :goto_d
    return-void

    .line 895
    :cond_e
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lfl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfl;-><init>(Lcom/tndev/billing/util/IabHelper;Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 924
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->c:Z

    if-nez v0, :cond_33

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 722
    :cond_33
    iget-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->c:Z

    return v0
.end method

.method b(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 761
    iget-boolean v1, p0, Lcom/tndev/billing/util/IabHelper;->d:Z

    if-eqz v1, :cond_30

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->sendException(Ljava/lang/Exception;)V

    .line 764
    const/4 v0, 0x0

    .line 771
    :goto_2f
    return v0

    .line 767
    :cond_30
    iput-object p1, p0, Lcom/tndev/billing/util/IabHelper;->e:Ljava/lang/String;

    .line 768
    iput-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->d:Z

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting async operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 928
    iget-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_9
    return-void
.end method

.method public consumeAsync(Lcom/tndev/billing/util/Purchase;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 659
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 666
    :goto_8
    return-void

    .line 663
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    goto :goto_8
.end method

.method public consumeAsync(Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tndev/billing/util/Purchase;",
            ">;",
            "Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 675
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 679
    :goto_8
    return-void

    .line 678
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/util/List;Lcom/tndev/billing/util/IabHelper$OnConsumeFinishedListener;Lcom/tndev/billing/util/IabHelper$OnConsumeMultiFinishedListener;)V

    goto :goto_8
.end method

.method d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 932
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 265
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->c:Z

    .line 267
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_23

    .line 268
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tndev/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 270
    :cond_1d
    iput-object v2, p0, Lcom/tndev/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    .line 271
    iput-object v2, p0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    .line 272
    iput-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 274
    :cond_23
    return-void
.end method

.method e(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/tndev/billing/util/IabHelper;->a:Z

    .line 183
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/tndev/billing/util/IabHelper;->a:Z

    .line 178
    iput-object p2, p0, Lcom/tndev/billing/util/IabHelper;->b:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 386
    iget v2, p0, Lcom/tndev/billing/util/IabHelper;->i:I

    if-eq p1, v2, :cond_b

    .line 466
    :cond_a
    :goto_a
    return v0

    .line 389
    :cond_b
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 394
    invoke-virtual {p0}, Lcom/tndev/billing/util/IabHelper;->a()V

    .line 396
    if-nez p3, :cond_2f

    .line 397
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    :cond_2d
    move v0, v1

    .line 400
    goto :goto_a

    .line 403
    :cond_2f
    invoke-virtual {p0, p3}, Lcom/tndev/billing/util/IabHelper;->a(Landroid/content/Intent;)I

    move-result v2

    .line 404
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    if-ne p2, v5, :cond_133

    if-nez v2, :cond_133

    .line 408
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 413
    if-eqz v3, :cond_86

    if-nez v4, :cond_ba

    .line 414
    :cond_86
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Extras: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 417
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_b7

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    :cond_b7
    move v0, v1

    .line 418
    goto/16 :goto_a

    .line 423
    :cond_ba
    :try_start_ba
    new-instance v2, Lcom/tndev/billing/util/Purchase;

    invoke-direct {v2, v3, v4}, Lcom/tndev/billing/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Lcom/tndev/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 427
    iget-object v6, p0, Lcom/tndev/billing/util/IabHelper;->j:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lcom/tndev/billing/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ff

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Signature verification failed for sku "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_fc

    iget-object v3, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v3, v0, v2}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    :cond_fc
    move v0, v1

    .line 431
    goto/16 :goto_a

    .line 433
    :cond_ff
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V
    :try_end_104
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_104} :catch_117

    .line 443
    iget-object v3, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v3, :cond_114

    .line 444
    iget-object v3, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v4, Lcom/tndev/billing/util/IabResult;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    :cond_114
    :goto_114
    move v0, v1

    .line 466
    goto/16 :goto_a

    .line 435
    :catch_117
    move-exception v0

    .line 436
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 438
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_130

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    :cond_130
    move v0, v1

    .line 440
    goto/16 :goto_a

    .line 447
    :cond_133
    if-ne p2, v5, :cond_15c

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v0, :cond_114

    .line 451
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    goto :goto_114

    .line 455
    :cond_15c
    if-nez p2, :cond_187

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase canceled - Response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 458
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_114

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    goto :goto_114

    .line 461
    :cond_187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed. Result code: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 463
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v2, :cond_114

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v2, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    goto/16 :goto_114
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->d:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tndev/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 324
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 369
    :cond_9
    :goto_9
    return-void

    .line 329
    :cond_a
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 336
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->g:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inapp"

    move-object v3, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 339
    if-eqz v1, :cond_5e

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to buy item, Error response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tndev/billing/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 342
    new-instance v2, Lcom/tndev/billing/util/IabResult;

    const-string v3, "Unable to buy item"

    invoke-direct {v2, v1, v3}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 343
    if-eqz p4, :cond_5e

    const/4 v1, 0x0

    invoke-interface {p4, v2, v1}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    .line 346
    :cond_5e
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 348
    iput p3, p0, Lcom/tndev/billing/util/IabHelper;->i:I

    .line 349
    iput-object p4, p0, Lcom/tndev/billing/util/IabHelper;->k:Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 350
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 351
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 352
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 353
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p3

    .line 350
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_af
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_12 .. :try_end_af} :catch_b1
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_af} :catch_d7

    goto/16 :goto_9

    .line 355
    :catch_b1
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 359
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 360
    if-eqz p4, :cond_9

    invoke-interface {p4, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    goto/16 :goto_9

    .line 362
    :catch_d7
    move-exception v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tndev/billing/util/IabHelper;->d(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 366
    new-instance v0, Lcom/tndev/billing/util/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/tndev/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 367
    if-eqz p4, :cond_9

    invoke-interface {p4, v0, v7}, Lcom/tndev/billing/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/tndev/billing/util/IabResult;Lcom/tndev/billing/util/Purchase;)V

    goto/16 :goto_9
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/tndev/billing/util/Inventory;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tndev/billing/util/Inventory;"
        }
    .end annotation

    .prologue
    .line 482
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 483
    new-instance v0, Lcom/tndev/billing/util/IabException;

    const/16 v1, -0x3f0

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 487
    :cond_12
    :try_start_12
    new-instance v0, Lcom/tndev/billing/util/Inventory;

    invoke-direct {v0}, Lcom/tndev/billing/util/Inventory;-><init>()V

    .line 488
    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Lcom/tndev/billing/util/Inventory;)I

    move-result v1

    .line 489
    if-eqz v1, :cond_30

    .line 490
    new-instance v0, Lcom/tndev/billing/util/IabException;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_25
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_25} :catch_40

    .line 501
    :catch_25
    move-exception v0

    .line 502
    new-instance v1, Lcom/tndev/billing/util/IabException;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 493
    :cond_30
    if-eqz p1, :cond_4b

    .line 494
    :try_start_32
    invoke-virtual {p0, v0, p2}, Lcom/tndev/billing/util/IabHelper;->a(Lcom/tndev/billing/util/Inventory;Ljava/util/List;)I

    move-result v1

    .line 495
    if-eqz v1, :cond_4b

    .line 496
    new-instance v0, Lcom/tndev/billing/util/IabException;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_40} :catch_25
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_40} :catch_40

    .line 504
    :catch_40
    move-exception v0

    .line 505
    new-instance v1, Lcom/tndev/billing/util/IabException;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lcom/tndev/billing/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 499
    :cond_4b
    return-object v0
.end method

.method public queryInventoryAsync(Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .parameter

    .prologue
    .line 573
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/tndev/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 574
    return-void
.end method

.method public queryInventoryAsync(ZLcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tndev/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 578
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 539
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 570
    :cond_d
    :goto_d
    return-void

    .line 544
    :cond_e
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 548
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lfj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfj;-><init>(Lcom/tndev/billing/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/tndev/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 569
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method public startSetup(Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    .registers 6
    .parameter

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/tndev/billing/util/IabHelper;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_c
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/tndev/billing/util/IabHelper;->c(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lfi;

    invoke-direct {v0, p0, p1}, Lfi;-><init>(Lcom/tndev/billing/util/IabHelper;Lcom/tndev/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/tndev/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    .line 247
    iget-object v0, p0, Lcom/tndev/billing/util/IabHelper;->f:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/tndev/billing/util/IabHelper;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 249
    return-void
.end method
