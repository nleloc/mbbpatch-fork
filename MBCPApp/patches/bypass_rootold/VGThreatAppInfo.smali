.class public Lcom/vkey/android/vguard/model/VGThreatAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vkey/android/vguard/model/VGThreatAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static f:[J


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/p0;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/p0;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/p0;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/p0;
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    sput-object v0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v1, 0x0

    const-wide/32 v2, 0x54710598    # 6.99939413E-315

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0x642bcff0

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x1d7c65f3

    aput-wide v2, v0, v1

    new-instance v0, Lcom/vkey/android/eu;

    invoke-direct {v0}, Lcom/vkey/android/eu;-><init>()V

    sput-object v0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0x54710599

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0x642bcff0

    :goto_0
    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v0, v1

    const v1, 0x642bcff0

    xor-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const v0, 0x54710599

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    aget-wide v1, p1, v1

    long-to-int p1, v1

    xor-int/2addr p1, v0

    return p1

    :cond_0
    const v2, 0x642bcff0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;

    iget-object v4, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    aget-wide v1, p1, v1

    long-to-int p1, v1

    xor-int/2addr p1, v0

    return p1

    :cond_2
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    aget-wide v0, p1, v3

    long-to-int p1, v0

    xor-int/2addr p1, v2

    return p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    aget-wide v0, p1, v3

    long-to-int p1, v0

    xor-int/2addr p1, v2

    return p1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/p0;
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/p0;
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/p0;
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getThreatInfo()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/p0;
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    long-to-int v1, v1

    const v2, 0x1d7c65f1

    xor-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-int v2, v2

    const v3, 0x642bcff0

    xor-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-int v0, v2

    const v2, 0x54710599

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    return v0
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setInstallSource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setThreatInfo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/p0;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreatInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tAppName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tInstallSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tAccessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->e:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    long-to-int p2, v0

    const v0, 0x54710599

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->f:[J

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    long-to-int p2, v0

    const v0, 0x642bcff0

    :goto_0
    xor-int/2addr p2, v0

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
