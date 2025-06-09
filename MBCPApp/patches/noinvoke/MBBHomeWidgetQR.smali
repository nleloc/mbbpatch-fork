.class public final Lio/flutter/plugins/MBBHomeWidgetQR;
.super Les/antonborri/home_widget/HomeWidgetProvider;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMBBHomeWidgetQR.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MBBHomeWidgetQR.kt\nio/flutter/plugins/MBBHomeWidgetQR\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,50:1\n13430#2,2:51\n*S KotlinDebug\n*F\n+ 1 MBBHomeWidgetQR.kt\nio/flutter/plugins/MBBHomeWidgetQR\n*L\n21#1:51,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Les/antonborri/home_widget/HomeWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILandroid/content/SharedPreferences;)V
    .registers 15
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/appwidget/AppWidgetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widgetData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_72

    aget v3, p3, v2

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d0095

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v5, "accNo"

    const/4 v6, 0x0

    invoke-interface {p4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "qrPath"

    invoke-interface {p4, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0a023c

    sget-object v8, Lio/flutter/plugins/HomeWidgetTypeAndroid;->Companion:Lio/flutter/plugins/HomeWidgetTypeAndroid$Companion;

    sget-object v9, Lio/flutter/plugins/HomeWidgetTypeAndroid;->MyQrCode:Lio/flutter/plugins/HomeWidgetTypeAndroid;

    invoke-virtual {v9}, Lio/flutter/plugins/HomeWidgetTypeAndroid;->getHomeWidgetKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9, v5}, Lio/flutter/plugins/HomeWidgetTypeAndroid$Companion;->pushScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v5, 0x4

    const v7, 0x7f0a0069

    const v8, 0x7f0a006a

    const v9, 0x7f0a007e

    if-eqz v6, :cond_60

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v4, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v4, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6c

    :cond_60
    const v6, 0x7f080097

    invoke-virtual {v4, v9, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v4, v8, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6c
    invoke-virtual {p2, v3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_72
    return-void
.end method

