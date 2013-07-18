.class public final Lp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput-object p1, p0, Lp;->a:Ljava/lang/String;

    iput p2, p0, Lp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lp;->a:Ljava/lang/String;

    iget v1, p0, Lp;->b:I

    invoke-static {v0, v1}, Lcom/bugsense/trace/models/PingsMechanism;->transmitPingSync(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lp;->b:I

    invoke-static {v0}, Lcom/bugsense/trace/models/PingsMechanism;->savePing(I)V

    :cond_f
    return-void
.end method
