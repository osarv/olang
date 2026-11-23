# olang Android sample APK

`olang-sample.apk`: built reproducibly from olang master d892910c7 with `make android-apk` (examples/android, docs/android.md).
NDK r28c, build-tools 36.1.0, platform android-36; minSdk 29, targetSdk 36, arm64-v8a only; signed with olang's committed debug key.
sha256 a5eba3cd86b1f617d84f37781f868e988eeccc0d9a7a5d1aea4e86a13ee5c87e

## Install

- With a computer: `adb install olang-sample.apk` (USB debugging on).
- On the phone: download the file, open it, allow "install unknown apps" for the browser or file manager when asked.

The app is called "olang sample". Logs: `adb logcat -s olang` (touches, keys, the probes' output).

## What the screen shows

The window is cleared to one colour, with two bands over it, each green for pass or red for fail:

- Upper band: `libprobe.so`, an olang program shipped as a native library, run directly from the app's
  nativeLibraryDir (where Android allows exec).
- Lower band: the same program copied into the app's files directory and run as `/system/bin/linker64 FILE`
  (how the terminal app will run downloaded binaries).

Both green means both routes work on this phone. Touches and key presses are logged, not drawn.
