.class public Lcom/android/internal/telephony/gsm/SimTlv;
.super Ljava/lang/Object;
.source "SimTlv.java"


# instance fields
.field curDataLength:I

.field curDataOffset:I

.field curOffset:I

.field hasValidTlvObject:Z

.field record:[B

.field tlvLength:I

.field tlvOffset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvOffset:I

    iput p3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvLength:I

    iput p2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    return-void
.end method

.method private parseCurrentTlvObject()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvOffset:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/SimTlv;->tlvLength:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x81

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getData()[B
    .locals 5

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getTag()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->record:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public isValidObject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    return v0
.end method

.method public nextObject()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataOffset:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->curOffset:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SimTlv;->parseCurrentTlvObject()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimTlv;->hasValidTlvObject:Z

    goto :goto_0
.end method
