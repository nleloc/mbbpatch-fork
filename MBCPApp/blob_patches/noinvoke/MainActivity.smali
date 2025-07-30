.class public final Lio/flutter/plugins/MainActivity;
.super Lio/flutter/embedding/android/FlutterFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .registers 3
    .param p1  # Lio/flutter/embedding/engine/FlutterEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "flutterEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/flutter/plugins/GeneratedPluginRegistrant;->registerWith(Lio/flutter/embedding/engine/FlutterEngine;)V

    return-void
.end method

