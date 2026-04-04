//
// Decompiled by Jadx - 5

// By developer-krushna (https://github.com/developer-krushna/)

package g;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.ConditionVariable;
import org.json.JSONException;
import org.json.JSONObject;

public final class a0 implements LocationListener {
    public final /* synthetic */ JSONObject a;
    public final /* synthetic */ ConditionVariable b;

    public final void onLocationChanged(Location location) {
        try {
            this.a.put("latitude", location.getLatitude());
            this.a.put("longitude", location.getLongitude());
            this.b.open();
        } catch (JSONException unused) {
        }
    }

    public a0(JSONObject jSONObject, ConditionVariable conditionVariable) {
        this.a = jSONObject;
        this.b = conditionVariable;
    }

    public final void onProviderDisabled(String str) {
    }

    public final void onProviderEnabled(String str) {
    }

    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}

// By developer-krushna (https://github.com/developer-krushna/)

