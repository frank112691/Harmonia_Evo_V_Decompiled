.class public Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;
.super Ljava/security/cert/CertPathBuilderException;
.source "ExtCertPathBuilderException.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/exception/ExtCertPathBuilderException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method