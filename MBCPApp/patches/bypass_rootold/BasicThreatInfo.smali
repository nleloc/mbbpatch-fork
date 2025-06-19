.class public Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static g:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    sput-object v0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v1, 0x0

    const-wide/32 v2, 0x275eea0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0x30e85928

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x756ba327

    aput-wide v2, v0, v1

    new-instance v0, Lcom/vkey/android/j;

    invoke-direct {v0}, Lcom/vkey/android/j;-><init>()V

    sput-object v0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0x30e85929

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0x275eea0

    :goto_0
    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v0, v1

    const v1, 0x275eea0

    xor-int v8, v0, v1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->b:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    const v2, 0x275eea0

    xor-int/2addr v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    long-to-int v6, v4

    const v7, 0x756b9e2d

    xor-int/2addr v6, v7

    add-int/2addr v6, v2

    const/4 v8, 0x1

    aget-wide v9, v3, v8

    long-to-int v3, v9

    const v11, 0x30e85929

    xor-int/2addr v3, v11

    add-int/2addr v6, v3

    not-int v3, v2

    long-to-int v12, v4

    xor-int/2addr v12, v7

    not-int v12, v12

    or-int/2addr v12, v3

    add-int/2addr v6, v12

    long-to-int v12, v4

    xor-int/2addr v12, v7

    add-int/2addr v12, v2

    long-to-int v13, v4

    xor-int/2addr v13, v7

    add-int/2addr v2, v13

    long-to-int v9, v9

    xor-int/2addr v9, v11

    add-int/2addr v2, v9

    long-to-int v4, v4

    xor-int/2addr v4, v7

    not-int v4, v4

    or-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v12, v2

    sub-int/2addr v6, v12

    int-to-char v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    aget-wide v3, v2, v8

    long-to-int v2, v3

    xor-int/2addr v2, v11

    add-int/2addr v2, v1

    long-to-int v5, v3

    xor-int/2addr v5, v11

    add-int/2addr v5, v1

    long-to-int v6, v3

    xor-int/2addr v6, v11

    add-int/2addr v5, v6

    not-int v6, v1

    long-to-int v7, v3

    xor-int/2addr v7, v11

    not-int v7, v7

    or-int/2addr v7, v6

    add-int/2addr v5, v7

    sub-int/2addr v2, v5

    long-to-int v5, v3

    xor-int/2addr v5, v11

    add-int/2addr v1, v5

    long-to-int v5, v3

    xor-int/2addr v5, v11

    add-int/2addr v1, v5

    long-to-int v3, v3

    xor-int/2addr v3, v11

    not-int v3, v3

    or-int/2addr v3, v6

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    sget-object v0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v0, v1

    const v1, 0x275eea0

    xor-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const v0, 0x30e85929

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    aget-wide v1, p1, v1

    long-to-int p1, v1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    const v2, 0x275eea0

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;

    iget-object v4, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->d:Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    aget-wide v1, p1, v1

    long-to-int p1, v1

    xor-int/2addr p1, v0

    return p1

    :cond_2
    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    aget-wide v0, p1, v3

    long-to-int p1, v0

    xor-int/2addr p1, v2

    return p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    aget-wide v0, p1, v3

    long-to-int p1, v0

    xor-int/2addr p1, v2

    return p1
.end method

.method public getHash()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u3d44\u3d25\u3d4b"

    invoke-static {v2}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {v1}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u3d44\u3d25\u3d4b"

    invoke-static {v2}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {v1}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->getThreatPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->f:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    long-to-int p2, v0

    const v0, 0x30e85929

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/vkey/android/internal/vguard/engine/BasicThreatInfo;->g:[J

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    long-to-int p2, v0

    const v0, 0x275eea0

    :goto_0
    xor-int/2addr p2, v0

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
