.class public final Lorg/apache/harmony/security/x509/NameConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "NameConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private excluded_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field

.field private final permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

.field private permitted_names:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/NameConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralSubtrees;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "permittedSubtrees are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "excludedSubtrees are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput-object p1, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;)V

    iput-object p3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[BLorg/apache/harmony/security/x509/NameConstraints$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/NameConstraints;-><init>(Lorg/apache/harmony/security/x509/GeneralSubtrees;Lorg/apache/harmony/security/x509/GeneralSubtrees;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/NameConstraints;)Lorg/apache/harmony/security/x509/GeneralSubtrees;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/NameConstraints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    return-object v0
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method

.method private prepareNames()V
    .locals 7

    const/16 v6, 0x9

    new-array v4, v6, [Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    :cond_0
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-array v4, v6, [Ljava/util/ArrayList;

    iput-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/GeneralSubtree;->getBase()Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v3

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Name Constraints: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Permitted: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permittedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Excluded: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excludedSubtrees:Lorg/apache/harmony/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralSubtrees;->getSubtrees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralSubtree;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/harmony/security/x509/GeneralSubtree;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/NameConstraints;->encoding:[B

    return-object v0
.end method

.method public isAcceptable(Ljava/security/cert/X509Certificate;)Z
    .locals 6

    const/4 v4, 0x4

    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    :cond_0
    const-string v3, "2.5.29.17"

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/x509/NameConstraints;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    :cond_1
    :try_start_1
    new-instance v3, Lorg/apache/harmony/security/x509/GeneralName;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v3

    :goto_2
    return v3

    :cond_3
    :try_start_2
    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public isAcceptable(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x1

    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    if-nez v6, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/NameConstraints;->prepareNames()V

    :cond_0
    new-array v5, v9, [Z

    new-array v3, v9, [Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v4

    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->excluded_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    return v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    aget-boolean v6, v3, v4

    if-nez v6, :cond_1

    aput-boolean v8, v5, v4

    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lorg/apache/harmony/security/x509/NameConstraints;->permitted_names:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6, v2}, Lorg/apache/harmony/security/x509/GeneralName;->isAcceptable(Lorg/apache/harmony/security/x509/GeneralName;)Z

    move-result v6

    if-eqz v6, :cond_4

    aput-boolean v8, v3, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_7

    aget-boolean v6, v5, v4

    if-eqz v6, :cond_6

    aget-boolean v6, v3, v4

    if-nez v6, :cond_6

    move v6, v7

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move v6, v8

    goto :goto_1
.end method
