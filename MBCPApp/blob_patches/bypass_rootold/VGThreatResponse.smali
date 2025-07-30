.class public Lcom/vkey/android/vguard/model/VGThreatResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vkey/android/vguard/model/VGThreatResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static i:[J


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vkey/android/vguard/model/VGThreatAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [J

    sput-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x0

    const-wide/32 v2, 0x157743e9

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0xd490462

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x64ea6cd3

    aput-wide v2, v0, v1

    new-instance v0, Lcom/vkey/android/ev;

    invoke-direct {v0}, Lcom/vkey/android/ev;-><init>()V

    sput-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    const v4, 0x157743e9

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    long-to-int v0, v2

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkey/android/vguard/model/VGThreatResponse;->setThreatPolicy(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v2, 0xd490463

    const/4 v3, 0x1

    if-lez v0, :cond_0

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v5, v0, v3

    long-to-int v0, v5

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v5, v0, v1

    long-to-int v0, v5

    xor-int/2addr v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    sget-object v5, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-lez p1, :cond_1

    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v0, p1, v3

    long-to-int p1, v0

    xor-int/2addr p1, v2

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v0, p1, v1

    long-to-int p1, v0

    xor-int/2addr p1, v4

    :goto_1
    iput-boolean p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkey/android/vguard/model/VGThreatPolicy;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v0, v1

    const v1, 0x157743e9

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    iput-boolean p6, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    return-void
.end method


# virtual methods

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    const v0, 0xd490463

    const/4 v1, 0x1

    const v2, 0x157743e9

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v4, p2, v1

    long-to-int p2, v4

    xor-int/2addr p2, v0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v4, p2, v3

    long-to-int p2, v4

    xor-int/2addr p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean p2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v1, p2, v1

    long-to-int p2, v1

    xor-int/2addr p2, v0

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v0, p2, v3

    long-to-int p2, v0

    xor-int/2addr p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
