.class Lcom/htc/home/personalize/AddAdapter$2;
.super Ljava/lang/Object;
.source "AddAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/AddAdapter;->setAdapter(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/AddAdapter;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 641
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$2;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter$2;->this$0:Lcom/htc/home/personalize/AddAdapter;

    #calls: Lcom/htc/home/personalize/AddAdapter;->addShortcutItems()V
    invoke-static {v0}, Lcom/htc/home/personalize/AddAdapter;->access$300(Lcom/htc/home/personalize/AddAdapter;)V

    .line 645
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter$2;->this$0:Lcom/htc/home/personalize/AddAdapter;

    #getter for: Lcom/htc/home/personalize/AddAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;
    invoke-static {v0}, Lcom/htc/home/personalize/AddAdapter;->access$200(Lcom/htc/home/personalize/AddAdapter;)Lcom/htc/home/personalize/PersonalizeMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/PersonalizeMain;->refreshAddToHomeAdapter()V

    .line 646
    return-void
.end method
