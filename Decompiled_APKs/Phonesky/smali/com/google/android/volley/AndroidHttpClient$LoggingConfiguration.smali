.class Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/volley/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    .line 394
    iput p2, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->level:I

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/volley/AndroidHttpClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    return-void
.end method

.method private isLoggable()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 408
    iget v0, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->level:I

    iget-object v1, p0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method
