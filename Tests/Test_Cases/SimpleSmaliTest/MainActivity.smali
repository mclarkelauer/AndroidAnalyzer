.class public Lcom/testApp/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private privateint:I

.field public publincint:I

.field private testString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/testApp/MainActivity;->publincint:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/testApp/MainActivity;->privateint:I

    .line 26
    const-string v0, "this is a test string"

    iput-object v0, p0, Lcom/testApp/MainActivity;->testString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 45
    .local v0, randomGenerator:Ljava/util/Random;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/testApp/MainActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/testApp/MainActivity;->testFunction()V

    .line 48
    return-void
.end method

.method public testFunction()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x5

    .line 32
    .local v0, x:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 33
    const-string v1, "TESTAPP"

    const-string v2, "Branch True"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    const-string v1, "TESTAPP"

    const-string v2, "Branch false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
