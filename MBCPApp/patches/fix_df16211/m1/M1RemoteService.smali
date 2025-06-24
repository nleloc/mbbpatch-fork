.class public Lcom/singalarity/sdk/blueshield/tenv/m1/M1RemoteService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public final a:Lcom/singalarity/sdk/blueshield/tenv/m1/M1RemoteService$a;


# direct methods
.method private static native $blueshield$B5513c587()[Ljava/lang/Object;
.end method

.method private static native synthetic $blueshield$COI()V
.end method

.method private static native $blueshield$E5513c587(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blueshield"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, -0x711690b4

    invoke-static {v0}, Lblueshield/Loader;->l(I)V

    invoke-static {}, Lcom/singalarity/sdk/blueshield/tenv/m1/M1RemoteService;->$blueshield$COI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/singalarity/sdk/blueshield/tenv/m1/M1RemoteService;->$blueshield$B5513c587()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {p0, v0}, Lcom/singalarity/sdk/blueshield/tenv/m1/M1RemoteService;->$blueshield$E5513c587(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method
