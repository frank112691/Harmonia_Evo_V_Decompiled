.class Landroid/net/wifi/NetworkUpdateResult;
.super Ljava/lang/Object;
.source "NetworkUpdateResult.java"


# instance fields
.field ipChanged:Z

.field netId:I

.field proxyChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    iput-boolean p2, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method


# virtual methods
.method public getNetworkId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    return v0
.end method

.method public hasIpChanged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    return v0
.end method

.method public hasProxyChanged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return v0
.end method

.method public setIpChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->ipChanged:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/NetworkUpdateResult;->netId:I

    return-void
.end method

.method public setProxyChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/NetworkUpdateResult;->proxyChanged:Z

    return-void
.end method
