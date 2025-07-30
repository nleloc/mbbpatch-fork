.class public final enum Lcom/vkey/android/vguard/model/VGVirtualSpaceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vkey/android/vguard/model/VGVirtualSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

.field public static final enum APP_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

.field public static final enum NONE:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

.field public static final enum SYSTEM_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

.field private static a:[J


# direct methods
.method private static synthetic $values()[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;
    .locals 4

    sget-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->a:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    long-to-int v1, v1

    const v2, 0x75bd88a5

    xor-int/2addr v1, v2

    new-array v1, v1, [Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-int v2, v2

    const v3, 0x639188bc

    xor-int/2addr v2, v3

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->NONE:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    long-to-int v2, v2

    const v3, 0x2e27b804

    xor-int/2addr v2, v3

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->APP_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    long-to-int v0, v2

    const v2, 0x361cf4d7

    xor-int/2addr v0, v2

    sget-object v2, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->SYSTEM_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    aput-object v2, v1, v0

    return-object v1
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [J

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->a:[J

    const/4 v1, 0x0

    const-wide/32 v2, 0x75bd88a6

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/32 v2, 0x639188bc

    aput-wide v2, v0, v1

    const-wide/32 v4, 0x2e27b805

    const/4 v1, 0x2

    aput-wide v4, v0, v1

    const-wide/32 v4, 0x361cf4d5

    const/4 v6, 0x3

    aput-wide v4, v0, v6

    new-instance v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    long-to-int v2, v2

    const v3, 0x639188bc

    xor-int/2addr v2, v3

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2}, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->NONE:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    new-instance v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    sget-object v2, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->a:[J

    aget-wide v1, v2, v1

    long-to-int v1, v1

    const v2, 0x2e27b804

    xor-int/2addr v1, v2

    const-string v2, "APP_BASED"

    invoke-direct {v0, v2, v1}, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->APP_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    new-instance v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    sget-object v1, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->a:[J

    aget-wide v2, v1, v6

    long-to-int v1, v2

    const v2, 0x361cf4d7

    xor-int/2addr v1, v2

    const-string v2, "SYSTEM_BASED"

    invoke-direct {v0, v2, v1}, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->SYSTEM_BASED:Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    invoke-static {}, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->$values()[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    move-result-object v0

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->$VALUES:[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkey/android/vguard/model/VGVirtualSpaceType;
    .locals 1

    const-class v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    return-object p0
.end method

.method public static values()[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;
    .locals 1

    sget-object v0, Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->$VALUES:[Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    invoke-virtual {v0}, [Lcom/vkey/android/vguard/model/VGVirtualSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkey/android/vguard/model/VGVirtualSpaceType;

    return-object v0
.end method
