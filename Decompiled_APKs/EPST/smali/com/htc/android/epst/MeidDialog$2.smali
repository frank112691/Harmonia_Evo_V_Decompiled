.class Lcom/htc/android/epst/MeidDialog$2;
.super Ljava/lang/Object;
.source "MeidDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/MeidDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/MeidDialog;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/MeidDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/android/epst/MeidDialog$2;->this$0:Lcom/htc/android/epst/MeidDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/android/epst/MeidDialog$2;->this$0:Lcom/htc/android/epst/MeidDialog;

    invoke-virtual {v0}, Lcom/htc/android/epst/MeidDialog;->finish()V

    .line 98
    return-void
.end method
