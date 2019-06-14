# Proguard Configuration for Realm (http://realm.io)
# For detailed discussion see: https://groups.google.com/forum/#!topic/realm-java/umqKCc50JGU
# Additionally you need to keep your Realm Model classes as well
# For example:
# -keep class com.yourcompany.realm.** { *; }

-keep class io.realm.annotations.RealmModule
-keep @io.realm.annotations.RealmModule class *
-keep class io.realm.internal.Keep
-keep @io.realm.internal.Keep class *
-dontwarn javax.**
-dontwarn io.realm.**

# Application Realm Model classes
-keep class com.laposte.bnum.digiposteplus.core.data.model.database.** { *; }
# WS Pojo
-keep class com.laposte.bnum.digiposteplus.core.data.model.pojo.** { *; }

-keep class com.vicpin.krealmextensions.**
-keepnames public class * extends io.realm.RealmObject
-keepnames public class * extends io.realm.RealmModel