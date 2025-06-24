.class public final LPnsNdyzgXyeb3tEAPFdpbje8b4s/g5;
.super LPnsNdyzgXyeb3tEAPFdpbje8b4s/t5;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LPnsNdyzgXyeb3tEAPFdpbje8b4s/n5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static native $blueshield$B006b8420(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Object;
.end method

.method private static native $blueshield$E006b8420(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blueshield"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, -0x23f96fd5

    invoke-static {v0}, Lblueshield/Loader;->l(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation build Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LPnsNdyzgXyeb3tEAPFdpbje8b4s/n5;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, LPnsNdyzgXyeb3tEAPFdpbje8b4s/g5;->$blueshield$B006b8420(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0}, LPnsNdyzgXyeb3tEAPFdpbje8b4s/t5;-><init>()V

    invoke-static {p0, p1}, LPnsNdyzgXyeb3tEAPFdpbje8b4s/g5;->$blueshield$E006b8420(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
