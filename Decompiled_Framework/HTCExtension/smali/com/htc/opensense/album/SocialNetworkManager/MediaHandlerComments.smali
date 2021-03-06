.class public Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
.super Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;,
        Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_ADD_COMMENT_PHOTO:Ljava/lang/String; = "addPhotoComment"

.field private static final ATTACHMENT_ADD_COMMENT_VIDEO:Ljava/lang/String; = "addVideoComment"

.field private static final ATTACHMENT_GET_COMMENT_PHOTO:Ljava/lang/String; = "getComments"

.field private static final ATTACHMENT_GET_COMMENT_VIDEO:Ljava/lang/String; = "getVideoComments"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAsyncReqList:Landroid/os/AsyncTask;

.field private mAsyncReqSetList:Landroid/os/AsyncTask;

.field private mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

.field private mIsForceLiveUpdate:Z

.field mMediaContent:Ljava/lang/String;

.field mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

.field mMediaWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/social/SocialServiceManager;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/opensense/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p1, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iput-object p3, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private isFileCacheExist(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private putListToFileCache(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancelBackgroundAction()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    return-void
.end method

.method public getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v0, :cond_0

    new-array v1, v11, [Ljava/lang/String;

    aput-object p1, v1, v10

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0x64

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-array v7, v11, [Lcom/htc/opensense/social/data/Medium;

    new-instance v0, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    aput-object v0, v7, v10

    aget-object v0, v7, v10

    iput-object p1, v0, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    :cond_2
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    return-object v8

    :catch_0
    move-exception v6

    sget-object v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerComments][getMediaInfoSynchronous]: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMediaList(Ljava/lang/Object;Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    :cond_1
    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    return v4
.end method

.method public getMediaListCount(Ljava/lang/Object;Z)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v3}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    invoke-virtual {v2, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    :cond_1
    if-nez p1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iput-boolean p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mIsForceLiveUpdate:Z

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;

    invoke-direct {v2, p0, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqList:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getMediaListCountSynchronous(Ljava/lang/Object;Z)I
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][MediaHandlerComments][getMediaListCountSynchronous]: getAttachments.."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast p1, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediumComments(Lcom/htc/opensense/social/MediumOp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerComments][getMediaListCountSynchronous]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getMediaListResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    check-cast p1, [Lcom/htc/opensense/social/data/Medium;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMediumComments(Lcom/htc/opensense/social/MediumOp;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/MediumOp;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const-string v4, "getComments"

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v6, v6, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "getVideoComments"

    :cond_2
    :try_start_0
    const-class v5, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {p1, v4, v5}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerComments][getMediumComments]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    return-void
.end method

.method public setMediumComments(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {p1}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    if-eqz v0, :cond_0

    const-string v2, "addPhotoComment"

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "addVideoComment"

    :cond_2
    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MediaHandlerComments][setMediumComments]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v3, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {p1, v2, v3, p2}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MediaHandlerComments][setMediumComments]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p1, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;

    invoke-direct {v0, p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqSetToMediaList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mAsyncReqSetList:Landroid/os/AsyncTask;

    return-void
.end method
