.class public Lcom/vkey/android/dy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkey/android/dy$a;
    }
.end annotation


# static fields
.field private static volatile f:Z

.field private static g:Lcom/vkey/android/dy;

.field private static i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static j:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final k:[B

.field private static l:I


# instance fields
.field public a:Z

.field private b:Landroid/app/AlertDialog$Builder;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/vkey/android/ea;

.field private h:Lcom/vkey/android/dy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkey/android/dy;->k:[B

    const/16 v0, 0xf6

    sput v0, Lcom/vkey/android/dy;->l:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    :array_0
    .array-data 1
        0x64t
        0x2t
        -0x18t
        0x6dt
        -0xft
        -0x2t
        0x1t
        -0x5t
        0x50t
        -0x4bt
        -0x7t
        0x4ct
        -0x45t
        -0xbt
        -0x5t
        -0x1t
        0x3t
        -0x7t
        0x5t
        0x45t
        -0x46t
        -0x7t
        0x6t
        -0xdt
        -0x5t
        0x6t
        0x45t
        -0x4t
        0x9t
        -0x3t
        -0x4t
        -0x13t
        0x9t
        -0x8t
        -0x1t
        0xdt
        -0x6t
        0x0t
        -0xdt
        -0x2t
        0x8t
        -0x1t
        -0x4t
        -0xat
        0xat
        -0x19t
        0xdt
        0x1t
        -0x7t
        0x6t
        -0xdt
        -0x5t
        0x6t
        -0x6t
        -0x2t
        0x6t
        -0x1t
        -0x7t
        0x6t
        -0x15t
        0xdt
        -0x7t
        -0x5t
        0x9t
        -0x10t
        0x6t
        0x45t
        -0x55t
        0x2t
        -0x5t
        -0x4t
        0x9t
        -0x7t
        0x5t
        0x45t
        -0x47t
        -0xft
        -0x2t
        0x36t
        0xct
        -0x19t
        -0x15t
        0x2t
        0x39t
        -0x3dt
        0x38t
        -0x2ft
        -0x17t
        0xat
        -0xct
        0xbt
        0x2t
        -0x15t
        -0x1t
        0x1t
        -0x15t
        0xdt
        0x4t
        -0x17t
        0x9t
        -0x6t
        0x6t
        0x4t
        -0x17t
        0x9t
        -0x6t
        0x6t
        0x4t
        -0x1dt
        0x9t
        -0x1t
        0x7t
        0x9t
        -0xdt
        0x6t
        0x5t
        0x37t
        -0x2et
        -0x17t
        0xat
        -0xct
        0xbt
        0x2t
        -0x15t
        -0x1t
        0x29t
        -0x35t
        -0x1t
        -0x2t
        0x3t
        -0x1t
        0x18t
        -0x13t
        -0x15t
        0x2t
        0x9t
        -0x9t
        -0xat
        0x1ft
        0xdt
        0x1t
        -0x27t
        0x6t
        -0xdt
        -0x5t
        0x6t
        0x45t
        -0x55t
        0x9t
        -0x9t
        -0xat
        0x31t
        -0x27t
        0x6t
        -0xdt
        -0x5t
        0x6t
        0x19t
        -0x1ft
        -0xct
        -0x3t
        0x52t
        -0x44t
        -0x1t
        -0x4t
        -0xat
        0x2t
        -0xdt
        0x1t
        -0x8t
        0x5t
        0x8t
        0x28t
        0x18t
        -0x50t
        -0x3t
        -0x7t
        0x52t
        -0x55t
        0x9t
        -0x9t
        -0xat
        0x55t
        -0x43t
        -0xdt
        0x5t
        -0xft
        -0x4t
        0x52t
        -0x44t
        -0x5t
        0x0t
        0x0t
        -0x16t
        0x0t
        0xct
        0x43t
        -0x51t
        0x7t
        0x1t
        -0x15t
        0xdt
        0x4t
        -0x17t
        0x9t
        -0x6t
        0x6t
        0x4t
        -0x8t
        -0x15t
        0x6t
        0x5t
        -0xbt
        0xbt
        -0x1t
        0x6t
        -0x10t
        -0x2t
        0x10t
        -0x8t
        0x0t
        0x9t
        -0x9t
        -0xat
        0x1ft
        0xdt
        0x1t
        -0x27t
        0x6t
        -0xdt
        -0x5t
        0x6t
        0x45t
        -0x55t
        0x9t
        -0x9t
        -0xat
        0x31t
        -0x27t
        0x6t
        -0xdt
        -0x5t
        0x6t
        0x19t
        -0x1ft
        -0xct
        -0x3t
        0x52t
        -0x44t
        -0x1t
        -0x4t
        -0xat
        0x2t
        -0xdt
        0x1t
        -0x8t
        0x5t
        0x8t
        0x28t
        0x18t
        -0x4t
        -0x13t
        -0x3t
        0x12t
        -0xdt
        0x1dt
        -0x24t
        0x9t
        -0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/vkey/android/dy;
    .locals 2

    const-class v0, Lcom/vkey/android/dy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vkey/android/dy;->g:Lcom/vkey/android/dy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vkey/android/dy;

    invoke-direct {v1}, Lcom/vkey/android/dy;-><init>()V

    sput-object v1, Lcom/vkey/android/dy;->g:Lcom/vkey/android/dy;

    :cond_0
    sget-object v1, Lcom/vkey/android/dy;->g:Lcom/vkey/android/dy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/vkey/android/dy;)Lcom/vkey/android/ea;
    .locals 0

    iget-object p0, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    return-object p0
.end method

.method private static a(III)Ljava/lang/String;
    .locals 6

    rsub-int/lit8 p1, p1, 0x41

    add-int/lit8 p2, p2, 0x4e

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/vkey/android/dy;->k:[B

    rsub-int p0, p0, 0x104

    new-array v2, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-byte v5, p2

    aput-byte v5, v2, v4

    if-ne v4, p1, :cond_0

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BI)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-byte v5, v1, p0

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr p2, v5

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, -0x2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 7

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/vkey/android/vguard/AppInBackgroundFinder;->getInstance()Lcom/vkey/android/vguard/AppInBackgroundFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkey/android/vguard/AppInBackgroundFinder;->wasInBackground()Z

    move-result v0

    sget-object v1, Lcom/vkey/android/dy;->k:[B

    const/16 v2, 0x8d

    aget-byte v2, v1, v2

    neg-int v2, v2

    const/16 v3, 0x9d

    aget-byte v3, v1, v3

    const/16 v4, 0x25

    invoke-static {v2, v3, v4}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    const/16 v2, 0x7d

    if-eqz v0, :cond_1

    aget-byte p1, v1, v4

    or-int/lit8 p2, p1, 0x25

    invoke-static {v2, p1, p2}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/vkey/android/dy;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkey/android/dy;->f:Z

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vkey/android/dy;->c:Landroid/os/Handler;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkey/android/dy;->b:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkey/android/ea;

    invoke-virtual {v1}, Lcom/vkey/android/ea;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkey/android/ea;

    iput-object v1, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    const/16 v3, 0x100

    sget-object v5, Lcom/vkey/android/dy;->k:[B

    aget-byte v2, v5, v2

    const/16 v6, 0x57

    aget-byte v5, v5, v6

    neg-int v5, v5

    invoke-static {v3, v2, v5}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, v1, Lcom/vkey/android/ea;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/vkey/android/ea;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/vkey/android/ea;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkey/android/dy;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_4

    sget-object p2, Lcom/vkey/android/bg;->h:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget p2, Lcom/vkey/android/dy;->l:I

    and-int/lit16 p2, p2, 0x3bd

    sget-object v1, Lcom/vkey/android/dy;->k:[B

    const/16 v5, 0x54

    aget-byte v5, v1, v5

    neg-int v5, v5

    aget-byte v1, v1, v4

    invoke-static {p2, v5, v1}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/vkey/android/dy;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    iput v0, p2, Lcom/vkey/android/ea;->a:I

    :cond_4
    iget-object p2, p0, Lcom/vkey/android/dy;->c:Landroid/os/Handler;

    new-instance v0, Lcom/vkey/android/dz;

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/vkey/android/dz;-><init>(Lcom/vkey/android/dy;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/vkey/android/dy;->c()V

    return-void
.end method

.method static synthetic a(Lcom/vkey/android/dy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/vkey/android/dy$a;

    invoke-direct {v0, p0}, Lcom/vkey/android/dy$a;-><init>(Lcom/vkey/android/dy;)V

    iput-object v0, p0, Lcom/vkey/android/dy;->h:Lcom/vkey/android/dy$a;

    invoke-static {p1}, Lcom/vkey/android/vguard/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/vkey/android/vguard/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vkey/android/dy;->h:Lcom/vkey/android/dy$a;

    new-instance v2, Landroid/content/IntentFilter;

    sget v3, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v3, 0x3ef

    sget-object v4, Lcom/vkey/android/dy;->k:[B

    const/16 v5, 0x7d

    aget-byte v5, v4, v5

    const/16 v6, 0x1f

    aget-byte v7, v4, v6

    neg-int v7, v7

    invoke-static {v3, v5, v7}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/vkey/android/vguard/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/flutter/plugins/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget v2, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v2, 0x39d

    and-int/lit8 v2, v2, 0x2f

    const/16 v5, 0x3c

    invoke-static {v3, v5, v2}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x53

    aget-byte p2, v4, p2

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x8a

    aget-byte v3, v4, v2

    const/16 v5, 0x2d

    invoke-static {v5, p2, v3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x4e

    aget-byte p2, v4, p2

    aget-byte p3, v4, v2

    const/16 v3, 0x87

    invoke-static {v3, p2, p3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vkey/android/dy;->d:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x54

    aget-byte p2, v4, p2

    neg-int p2, p2

    aget-byte p3, v4, v2

    const/16 v2, 0xe9

    invoke-static {v2, p2, p3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    iget p3, p3, Lcom/vkey/android/ea;->a:I

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0x25

    aget-byte p2, v4, p2

    const/16 p3, 0x74

    aget-byte p3, v4, p3

    aget-byte v2, v4, v6

    neg-int v2, v2

    invoke-static {p2, p3, v2}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    iget p0, p0, Lcom/vkey/android/ea;->b:I

    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/vkey/android/dy;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vkey/android/dy;->a(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public static a(Lcom/vkey/android/ea;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    check-cast v2, Lcom/vkey/android/ea;

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 v0, 0xc7

    const/16 v1, 0x2d

    :try_start_1
    sget-object v2, Lcom/vkey/android/dy;->k:[B

    const/16 v3, 0xc1

    aget-byte v2, v2, v3

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/vkey/android/dy;)Lcom/vkey/android/dy$a;
    .locals 0

    iget-object p0, p0, Lcom/vkey/android/dy;->h:Lcom/vkey/android/dy$a;

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vkey/android/ea;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vkey/android/ea;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sget-object v0, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkey/android/dy;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkey/android/dy;->e:Lcom/vkey/android/ea;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    sget-object p3, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    const/16 p3, 0xcf

    sget-object v0, Lcom/vkey/android/dy;->k:[B

    const/16 v1, 0x55

    aget-byte v0, v0, v1

    const/16 v1, 0x1b

    invoke-static {p3, v0, v1}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-boolean p2, Lcom/vkey/android/dy;->f:Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, p2}, Lcom/vkey/android/dy;->a(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object p3, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_4

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p3, Lcom/vkey/android/dy;->k:[B

    const/16 v0, 0x7e

    aget-byte v1, p3, v0

    neg-int v1, v1

    const/16 v2, 0x8a

    aget-byte v3, p3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v5, 0xb1

    invoke-static {v5, v1, v3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/16 v1, 0x74

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    aget-byte v3, p3, v0

    neg-int v3, v3

    aget-byte v6, p3, v2

    sub-int/2addr v6, v4

    invoke-static {v5, v3, v6}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v3, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v3, 0x398

    aget-byte v6, p3, v1

    aget-byte v7, p3, v2

    sub-int/2addr v7, v4

    invoke-static {v3, v6, v7}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v3, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v3, 0x398

    aget-byte v6, p3, v1

    aget-byte v7, p3, v2

    sub-int/2addr v7, v4

    invoke-static {v3, v6, v7}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x54

    aget-byte v6, p3, v3

    neg-int v6, v6

    and-int/lit16 v7, v6, 0xf0

    const/16 v8, 0xc1

    aget-byte v9, p3, v8

    neg-int v9, v9

    invoke-static {v6, v7, v9}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    aget-byte v3, p3, v3

    neg-int v3, v3

    and-int/lit16 v6, v3, 0xf0

    aget-byte v7, p3, v8

    neg-int v7, v7

    invoke-static {v3, v6, v7}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v3, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v3, 0x3af

    const/16 v6, 0x75

    aget-byte v7, p3, v6

    neg-int v7, v7

    aget-byte v9, p3, v8

    neg-int v9, v9

    invoke-static {v3, v7, v9}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v3, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v3, v3, 0x3af

    aget-byte v6, p3, v6

    neg-int v6, v6

    aget-byte v7, p3, v8

    neg-int v7, v7

    invoke-static {v3, v6, v7}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/vkey/android/dy;->a:Z

    if-eqz p2, :cond_2

    sget p2, Lcom/vkey/android/bg;->r:I

    if-eq p2, v4, :cond_3

    :cond_2
    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    aget-byte v3, p3, v0

    neg-int v3, v3

    aget-byte v6, p3, v2

    sub-int/2addr v6, v4

    invoke-static {v5, v3, v6}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    aget-byte v0, p3, v0

    neg-int v0, v0

    aget-byte v3, p3, v2

    sub-int/2addr v3, v4

    invoke-static {v5, v0, v3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v0, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v0, v0, 0x398

    aget-byte v3, p3, v1

    aget-byte v5, p3, v2

    sub-int/2addr v5, v4

    invoke-static {v0, v3, v5}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/vkey/android/dy;->j:Ljava/util/concurrent/ConcurrentHashMap;

    sget v0, Lcom/vkey/android/dy;->l:I

    and-int/lit16 v0, v0, 0x398

    aget-byte v1, p3, v1

    aget-byte p3, p3, v2

    sub-int/2addr p3, v4

    invoke-static {v0, v1, p3}, Lcom/vkey/android/dy;->a(III)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lcom/vkey/android/bg;->r:I

    if-eqz p2, :cond_3

    sget-object p2, Lcom/vkey/android/bg;->g:Landroid/content/Context;

    invoke-static {p2}, Lcom/vkey/android/internal/vguard/util/Utility;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    sget-boolean p2, Lcom/vkey/android/dy;->f:Z

    if-nez p2, :cond_4

    sget-object p2, Lcom/vkey/android/dy;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, p2}, Lcom/vkey/android/dy;->a(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
