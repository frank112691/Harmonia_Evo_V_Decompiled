.class Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;
.super Landroid/database/DataSetObserver;
.source "LinearExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/LinearExpandableListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter$1;->this$0:Lcom/android/htccontacts/widget/LinearExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 60
    return-void
.end method
