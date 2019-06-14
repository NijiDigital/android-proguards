# Note that if we could use kapt to generate registries, possible to get rid of this
-keepattributes *Annotation*
# Do not obfuscate classes with Injected Constructors
-keepclasseswithmembernames class * { @javax.inject.Inject <init>(...); }
# Do not obfuscate classes with Injected Fields
-keepclasseswithmembernames class * { @javax.inject.Inject <fields>; }
# Do not obfuscate classes with Injected Methods
-keepclasseswithmembernames class * { @javax.inject.Inject <methods>; }


-keep @android.support.annotation.Keep class *
-dontwarn javax.inject.**
-dontwarn javax.annotation.**
-keep class **$$Factory { *; }
-keep class **$$MemberInjector { *; }

-adaptclassstrings
-keep class toothpick.** { *; }

-keep @javax.inject.Singleton class *
#You need to keep your custom scopes too

-keep class javax.inject.**

# Do not obfuscate annotation scoped classes
-keepnames @javax.inject.Singleton class *
# Add any custom defined @Scope (e.g. @Singleton) annotations here
# because proguard does not allow annotation inheritance rules


-keepattributes Annotation

-keep class * extends BaseViewModel { *; }

-keepattributes Annotation

-keepnames class * {
    @javax.inject.Inject <init>(...);
    @javax.inject.Inject <fields>;
    @javax.inject.Inject <methods>;
}

-keepnames @javax.inject.Singleton class *
-dontwarn javax.inject.**

-keep class **$$Factory{ *; }
-keep class **$$MemberInjector{ *; }