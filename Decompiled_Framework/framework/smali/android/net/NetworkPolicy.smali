.class public Landroid/net/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MTU:J = 0x5dcL

.field public static final LIMIT_DISABLED:J = -0x1L

.field public static final SNOOZE_NEVER:J = -0x1L

.field public static final WARNING_DISABLED:J = -0x1L


# instance fields
.field public cycleDay:I

.field public lastSnooze:J

.field public limitBytes:J

.field public final template:Landroid/net/NetworkTemplate;

.field public warningBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/NetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/NetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;IJJJ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing NetworkTemplate"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iput p2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    iput-wide p3, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iput-wide p5, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide p7, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/NetworkPolicy;)I
    .locals 4

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/net/NetworkPolicy;

    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/net/NetworkPolicy;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/NetworkPolicy;

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v3, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOverLimit(J)Z
    .locals 4

    const-wide/16 v0, 0xbb8

    add-long/2addr p1, v0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: cycleDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warningBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
