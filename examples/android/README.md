# examples/android - a NativeActivity in olang

An Android app with no C and no Java: `android.app.NativeActivity` loads `libnative.so`, built from `native.olang`.
It clears its window with EGL and OpenGL ES, logs touches and keys to logcat (tag `olang`), and checks that it can run
a program it ships, `libprobe.so` (from `probe.olang`), both from its native library directory and through
`/system/bin/linker64` - a green band for each check that passed, a red one for each that failed.

| File | What it is |
|---|---|
| `native.olang` | the activity: `ANativeActivity_onCreate`, its callbacks, the window, input, the checks |
| `probe.olang` | the program the app runs; it prints that it ran ("olang probe ok:") and its arguments |
| `AndroidManifest.xml` | the app: NativeActivity, `hasCode="false"`, lib_name `native`, minSdk 29, targetSdk 36, arm64-v8a |
| `debug.keystore` | the debug key the APK is signed with (PKCS12, password `android`, alias `olangdebug`) |

Build it from the repository's root, with the Android NDK and SDK tools named (docs/android.md):

```
ANDROID_NDK_HOME=/path/to/android-ndk-r28c make android-apk \
    ANDROID_BUILD_TOOLS=/path/to/build-tools/36.1.0 ANDROID_JAR=/path/to/platforms/android-36/android.jar
adb install build/android/olang-sample.apk
adb logcat -s olang
```

The debug key is for trying the sample only; an app of your own is signed with a key of its own.
