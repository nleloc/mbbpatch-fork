.class public final Lg/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic a:Lorg/json/JSONObject;

.field public final synthetic b:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Landroid/os/ConditionVariable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lg/a0;->a:Lorg/json/JSONObject;

    .line 3
    iput-object p2, p0, Lg/a0;->b:Landroid/os/ConditionVariable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/a0;->a:Lorg/json/JSONObject;

    .line 3
    const-string v1, "latitude"

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 8
    move-result-wide v2

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 12
    iget-object v0, p0, Lg/a0;->a:Lorg/json/JSONObject;

    .line 14
    const-string v1, "longitude"

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 23
    iget-object p1, p0, Lg/a0;->b:Landroid/os/ConditionVariable;

    .line 25
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 28
    :catch_1b
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    return-void
.end method
