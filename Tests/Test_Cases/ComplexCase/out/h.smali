.class public final Lh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lh;->a:Landroid/content/Context;

    iput-object p2, p0, Lh;->b:Ljava/lang/String;

    iput p3, p0, Lh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lh;->a:Landroid/content/Context;

    iget-object v1, p0, Lh;->b:Ljava/lang/String;

    iget v2, p0, Lh;->c:I

    invoke-static {v0, v1, v2}, Lcom/bugsense/trace/models/CrashMechanism;->transmitCrashSync(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lh;->b:Ljava/lang/String;

    iget v1, p0, Lh;->c:I

    invoke-static {v0, v1}, Lcom/bugsense/trace/models/CrashMechanism;->saveCrash(Ljava/lang/String;I)V

    :cond_13
    return-void
.end method
