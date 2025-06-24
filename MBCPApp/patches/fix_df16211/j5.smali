.class public final LPnsNdyzgXyeb3tEAPFdpbje8b4s/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LPnsNdyzgXyeb3tEAPFdpbje8b4s/n5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "blueshield"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0x63883241

    invoke-static {v0}, Lblueshield/Loader;->l(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public final native b()Z
.end method
