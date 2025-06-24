.class public Lcom/singalarity/sdk/blueshield/tenv/R1Native;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method private static native synthetic $blueshield$COI()V
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blueshield"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0x6f27d834

    invoke-static {v0}, Lblueshield/Loader;->l(I)V

    invoke-static {}, Lcom/singalarity/sdk/blueshield/tenv/R1Native;->$blueshield$COI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native setLogDebugMessages(Z)I
.end method
