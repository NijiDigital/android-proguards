#http://developers.atinternet-solutions.com/android-fr/bien-commencer-android-fr/minification-proguard-android-fr/
-keep class com.atinternet.*** { *; }

# No automatic tracking, so it is ok
# See https://developers.atinternet-solutions.com/android-fr/smartsdk-android-fr/activation-tracking-automatique-android-fr/
-dontwarn io.socket.**

-dontwarn com.atinternet.***