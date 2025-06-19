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
.method public addThreat(Lcom/vkey/android/vguard/model/VGThreatAppInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 3

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v0, v1

    const v1, 0x157743e9

    xor-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0xd490463

    xor-int/2addr p1, v0

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vkey/android/vguard/model/VGThreatResponse;

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    long-to-int p1, v0

    const v0, 0x157743e9

    xor-int/2addr p1, v0

    return p1
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    const-string v2, "${threats}"

    const-string v3, "<br/><br/><ul>%s</ul>"

    const v4, 0x157743e9

    const/4 v5, 0x0

    const v6, 0xd490463

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v7, v1, v7

    long-to-int v7, v7

    xor-int/2addr v6, v7

    new-array v6, v6, [Ljava/lang/Object;

    aget-wide v7, v1, v5

    long-to-int v1, v7

    xor-int/2addr v1, v4

    iget-object v4, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkey/android/vguard/model/VGThreatAppInfo;

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getThreatInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "N/A"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :cond_1
    iget-boolean v11, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v12, 0x2

    aget-wide v12, v11, v12

    long-to-int v12, v12

    const v13, 0x64ea6cd1

    xor-int/2addr v12, v13

    new-array v12, v12, [Ljava/lang/Object;

    aget-wide v13, v11, v5

    long-to-int v11, v13

    xor-int/2addr v11, v4

    invoke-virtual {v9}, Lcom/vkey/android/vguard/model/VGThreatAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v11

    sget-object v9, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v13, v9, v7

    long-to-int v9, v13

    xor-int/2addr v9, v6

    aput-object v10, v12, v9

    const-string v9, "<li>&nbsp;%1$s <br/> %2$s</li>"

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v11, v9, v7

    long-to-int v11, v11

    xor-int/2addr v11, v6

    new-array v11, v11, [Ljava/lang/Object;

    aget-wide v12, v9, v5

    long-to-int v9, v12

    xor-int/2addr v9, v4

    aput-object v10, v11, v9

    const-string v9, "<li>&nbsp;%s</li>"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v8, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    const-string v9, "<br/><br/><ol>%s</ol>"

    if-eqz v8, :cond_4

    sget-object v2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v10, v2, v7

    long-to-int v8, v10

    xor-int/2addr v8, v6

    new-array v8, v8, [Ljava/lang/Object;

    aget-wide v10, v2, v5

    long-to-int v2, v10

    xor-int/2addr v2, v4

    aput-object v1, v8, v2

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "${threatsAndApps}"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v7, v2, v7

    long-to-int v3, v7

    xor-int/2addr v3, v6

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v5, v2, v5

    long-to-int v2, v5

    xor-int/2addr v2, v4

    aput-object v1, v3, v2

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "${OLthreatsAndApps}"

    goto/16 :goto_0

    :cond_4
    sget-object v8, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v10, v8, v7

    long-to-int v10, v10

    xor-int/2addr v10, v6

    new-array v10, v10, [Ljava/lang/Object;

    aget-wide v11, v8, v5

    long-to-int v8, v11

    xor-int/2addr v8, v4

    aput-object v1, v10, v8

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    aget-wide v7, v2, v7

    long-to-int v3, v7

    xor-int/2addr v3, v6

    new-array v3, v3, [Ljava/lang/Object;

    aget-wide v5, v2, v5

    long-to-int v2, v5

    xor-int/2addr v2, v4

    aput-object v1, v3, v2

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "${OLthreats}"

    goto/16 :goto_0

    :goto_3
    sget-object v1, Lcom/vkey/android/bh;->d:Ljava/lang/String;

    const-string v2, "${troubleshooting_id}"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/vkey/android/bm;->a()Lcom/vkey/android/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/vkey/android/bm;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getThreatPolicy()Lcom/vkey/android/vguard/model/VGThreatPolicy;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    return-object v0
.end method

.method public getThreats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vkey/android/vguard/model/VGThreatAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    long-to-int v1, v1

    const v2, 0xd490463

    xor-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-int v0, v2

    const v2, 0x157743e9

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIncludedAppName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    return v0
.end method

.method public isUsingLegacyMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    return v0
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    return-void
.end method

.method public setCategoryValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    return-void
.end method

.method public setIncludedAppName(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    return-void
.end method

.method public setThreatPolicy(I)V
    .locals 3

    invoke-static {}, Lcom/vkey/android/vguard/model/VGThreatPolicy;->values()[Lcom/vkey/android/vguard/model/VGThreatPolicy;

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vkey/android/vguard/model/VGThreatResponse;->i:[J

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    long-to-int p1, v1

    const v1, 0x157743e9

    xor-int/2addr p1, v1

    aget-object p1, v0, p1

    :goto_0
    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    return-void
.end method

.method public setThreatPolicy(Lcom/vkey/android/vguard/model/VGThreatPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    return-void
.end method

.method public setThreats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vkey/android/vguard/model/VGThreatAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    return-void
.end method

.method public setUsingLegacyMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->f:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tCategoryName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tCategoryValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tThreatPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->c:Lcom/vkey/android/vguard/model/VGThreatPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\tIncludedAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\tUsingLegacyMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vkey/android/vguard/model/VGThreatResponse;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nThreats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
