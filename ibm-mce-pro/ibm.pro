
# https://developer.ibm.com/customer-engagement/tutorials/use-proguard-ibm-mobile-app-messaging-sdk/

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

-dontpreverify
-repackageclasses ''
-allowaccessmodification
-optimizations !code/simplification/arithmetic
-keepattributes InnerClasses
-keepattributes *Annotation*
-keepparameternames

-keep public class * extends android.content.BroadcastReceiver {public *; protected *;}
-keep public class * extends com.ibm.mce.sdk.wi.WakefulIntentService {public *; protected *;}
-keep public class * extends android.app.IntentService {public *; protected *;}
-keep public class * extends android.app.Service {public *; protected *;}
-keep public class com.ibm.mce.sdk.api.** {public *; protected *;}
-keep public class com.ibm.mce.sdk.events.** {public *; protected *;}
-keep public class com.ibm.mce.sdk.notification.NotificationsUtility {public *; protected *;}
-keep public class com.ibm.mce.sdk.notification.NotificationsUtility$* {public *; protected *;}
-keep public class com.ibm.mce.sdk.Preferences {public *; protected *;}
-keep public class com.amazon.device.messaging.ADM {public *; protected *;}
-keep public class com.ibm.mce.sdk.adm.AdmDeliveryChannel {public *; protected *;}
-keep public class com.ibm.mce.sdk.gcm.GcmDeliveryChannel {public *; protected *;}
-keep public class com.google.android.gms.common.GooglePlayServicesUtil {public *; protected *;}
-keep public class * extends android.content.ContentProvider
-keep public class * extends com.ibm.mce.sdk.api.notification.MceNotificationAction
# added nov 17
-dontwarn rx.internal.util.unsafe.**
-keep class com.ibm.mce.sdk.** { *; }
-dontwarn com.ibm.mce.sdk.**
-keep public class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**
-keepnames public class * extends io.realm.RealmObject
-keep class io.realm.** { *; }
-dontwarn io.realm.**
-keeppackagenames com.android.providers.contacts.**