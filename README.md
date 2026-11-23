# olang Android sample APK

`olang-sample.apk`: built reproducibly from olang master 5554672f9 with `make android-apk` (examples/android, docs/android.md).
NDK r28c, build-tools 36.1.0, platform android-36; minSdk 29, targetSdk 36, arm64-v8a only; signed with olang's committed debug key.
sha256 ba668e0e5c1f9213403d2b0948688166c203f4e12e4a3dc7a9f39e8be3d01633

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
