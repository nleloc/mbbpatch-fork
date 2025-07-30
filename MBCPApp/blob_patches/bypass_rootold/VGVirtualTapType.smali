.class public final enum Lcom/vkey/android/vguard/model/VGVirtualTapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vkey/android/vguard/model/VGVirtualTapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field public static final enum AIRDROID_USB_DEBUG:Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field public static final enum ANDROID_STUDIO_EMULATOR:Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field public static final enum CORELLIUM_VD:Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field public static final enum P_CLOUDY_NON_VIRTUAL:Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field public static final enum VIRTUAL_TAP:Lcom/vkey/android/vguard/model/VGVirtualTapType;

.field private static a:[J


# direct methods
.method private static synthetic $values()[Lcom/vkey/android/vguard/model/VGVirtualTapType;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vkey/android/vguard/model/VGVirtualTapType;

    sget-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->a:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v2, v2

    const v3, 0x6c5d7576

    xor-int/2addr v2, v3

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualTapType;->VIRTUAL_TAP:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    long-to-int v2, v2

    const v3, 0x56b453f2

    xor-int/2addr v2, v3

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualTapType;->CORELLIUM_VD:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    long-to-int v2, v2

    const v3, 0x7453bd93

    xor-int/2addr v2, v3

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualTapType;->ANDROID_STUDIO_EMULATOR:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aget-wide v2, v1, v2

    long-to-int v1, v2

    const v2, 0x356dfc4c

    xor-int/2addr v1, v2

    sget-object v2, Lcom/vkey/android/vguard/model/VGVirtualTapType;->AIRDROID_USB_DEBUG:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->P_CLOUDY_NON_VIRTUAL:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x4

    new-array v1, v0, [J

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->a:[J

    const/4 v2, 0x0

    const-wide/32 v3, 0x6c5d7576

    aput-wide v3, v1, v2

    const-wide/32 v5, 0x56b453f3

    const/4 v2, 0x1

    aput-wide v5, v1, v2

    const-wide/32 v5, 0x7453bd91

    const/4 v7, 0x2

    aput-wide v5, v1, v7

    const-wide/32 v5, 0x356dfc4f

    const/4 v8, 0x3

    aput-wide v5, v1, v8

    new-instance v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    long-to-int v3, v3

    const v4, 0x6c5d7576

    xor-int/2addr v3, v4

    const-string v4, "VIRTUAL_TAP"

    invoke-direct {v1, v4, v3}, Lcom/vkey/android/vguard/model/VGVirtualTapType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->VIRTUAL_TAP:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    new-instance v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    sget-object v3, Lcom/vkey/android/vguard/model/VGVirtualTapType;->a:[J

    aget-wide v2, v3, v2

    long-to-int v2, v2

    const v3, 0x56b453f2

    xor-int/2addr v2, v3

    const-string v3, "CORELLIUM_VD"

    invoke-direct {v1, v3, v2}, Lcom/vkey/android/vguard/model/VGVirtualTapType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->CORELLIUM_VD:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    new-instance v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    sget-object v2, Lcom/vkey/android/vguard/model/VGVirtualTapType;->a:[J

    aget-wide v3, v2, v7

    long-to-int v2, v3

    const v3, 0x7453bd93

    xor-int/2addr v2, v3

    const-string v3, "ANDROID_STUDIO_EMULATOR"

    invoke-direct {v1, v3, v2}, Lcom/vkey/android/vguard/model/VGVirtualTapType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->ANDROID_STUDIO_EMULATOR:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    new-instance v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    sget-object v2, Lcom/vkey/android/vguard/model/VGVirtualTapType;->a:[J

    aget-wide v3, v2, v8

    long-to-int v2, v3

    const v3, 0x356dfc4c

    xor-int/2addr v2, v3

    const-string v3, "AIRDROID_USB_DEBUG"

    invoke-direct {v1, v3, v2}, Lcom/vkey/android/vguard/model/VGVirtualTapType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->AIRDROID_USB_DEBUG:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    new-instance v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    const-string v2, "P_CLOUDY_NON_VIRTUAL"

    invoke-direct {v1, v2, v0}, Lcom/vkey/android/vguard/model/VGVirtualTapType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vkey/android/vguard/model/VGVirtualTapType;->P_CLOUDY_NON_VIRTUAL:Lcom/vkey/android/vguard/model/VGVirtualTapType;

    invoke-static {}, Lcom/vkey/android/vguard/model/VGVirtualTapType;->$values()[Lcom/vkey/android/vguard/model/VGVirtualTapType;

    move-result-object v0

    sput-object v0, Lcom/vkey/android/vguard/model/VGVirtualTapType;->$VALUES:[Lcom/vkey/android/vguard/model/VGVirtualTapType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vkey/android/vguard/model/VGVirtualTapType;
    .locals 1

    const-class v0, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vkey/android/vguard/model/VGVirtualTapType;

    return-object p0
.end method

.method public static values()[Lcom/vkey/android/vguard/model/VGVirtualTapType;
    .locals 1

    sget-object v0, Lcom/vkey/android/vguard/model/VGVirtualTapType;->$VALUES:[Lcom/vkey/android/vguard/model/VGVirtualTapType;

    invoke-virtual {v0}, [Lcom/vkey/android/vguard/model/VGVirtualTapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkey/android/vguard/model/VGVirtualTapType;

    return-object v0
.end method
