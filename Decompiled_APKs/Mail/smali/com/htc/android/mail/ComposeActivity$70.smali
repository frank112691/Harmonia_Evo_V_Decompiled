.class Lcom/htc/android/mail/ComposeActivity$70;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8387
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$70;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v1, 0x1

    .line 8389
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$70;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->prepareSendMail(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/android/mail/ComposeActivity;->access$6400(Lcom/htc/android/mail/ComposeActivity;ZZ)V

    .line 8390
    return-void
.end method
