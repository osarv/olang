# Building for Android

olang builds native Android programs and app libraries for 64-bit ARM phones (arm64-v8a), with the Android NDK, and
no C or Java of your own: an app is a NativeActivity whose code is an olang library. SPEC B12e is the rule; this page
says how to use it.

## What you need

| What | Version used here | Where olang looks |
|---|---|---|
| Android NDK | r28c (clang 19.0.1) | `ANDROID_NDK_HOME`, else `ANDROID_NDK_ROOT`: the directory holding `toolchains/llvm` |
| SDK build-tools (an app only) | 36.1.0 (aapt2, zipalign, apksigner) | `ANDROID_BUILD_TOOLS`, else `$ANDROID_HOME/build-tools/36.1.0` |
| SDK platform (an app only) | android-36 (Android 16) | `ANDROID_JAR`, else `$ANDROID_HOME/platforms/android-36/android.jar` |
| A JDK (an app only) | OpenJDK 21, the system's | `java` on `PATH`, which apksigner runs on |
| qemu-user (tests only) | the system's | `qemu-aarch64` on `PATH`, or `OLANG_EMULATOR` |

The NDK's clang, linker and C library (bionic) build everything for Android, whichever clang olang otherwise uses;
C imports (`import x "unistd.h"`) read the NDK's headers.

## Programs

```
olang build -target aarch64-linux-android hello.olang          # API level 29 (Android 10)
olang build -target aarch64-linux-android35 hello.olang        # another level, 29 or later
```

A program is a position-independent executable linked against the system's `libc.so`, `libm.so` and `libdl.so`.
`TargetOs` is `"android"` and `TargetArch` `"aarch64"`, so a program says `if TargetOs == "android"` where it must do
something its own way there. The level is the oldest Android the program runs on: functions the C library gained
later are not declared to it (std's `memfd_create`, from level 30, is made as a system call below it).

`olang test -target aarch64-linux-android FILE` and `olang run -target aarch64-linux-android FILE` link the program
statically - bionic's loader is not on a Linux machine - and run it in `qemu-aarch64`. `make android-test` runs the
corpus's, std's and the prelude's tests that way; it says it skipped where no NDK is named. Under the emulator the C
library writes one line to the standard error when the runtime turns off heap pointer tagging (below), which on a
phone goes to the system log instead.

## App libraries

```
olang build -library -target aarch64-linux-android native.olang     # libnative.so and native.h
```

`-library` (X14) builds a shared library showing only the program's export fns. A NativeActivity's library exports
`ANativeActivity_onCreate`, which Android calls on the app's main thread with the `ANativeActivity*`; the activity's
other callbacks are function pointers the library writes into the activity's callbacks table, each an export fn's C
entry: a struct of C function pointers (`extern fn?&(activity U64)`, X13a) filled and copied over the table whole.
examples/android/native.olang does exactly that, and draws with EGL and OpenGL ES, reads input through an
`ALooper`, and logs with `__android_log_write` - all declared as `extern fn` in an `extern link "android" { ... }`
block and the like, which also names the system library to link.

## The runtime on Android

- Heap pointer tagging is turned off as the program or library starts (bionic's `mallopt`, level 30 and later): olang's
  weak references keep a generation in a pointer's top bits, where tagging puts its tag. An app also declares
  `android:allowNativeHeapPointerTagging="false"` in its manifest.
- `errno`, `sysconf`'s names and `struct sigaction` are bionic's, which the runtime reaches as such.
- Thread-local storage is ELF TLS (level 29 and later), reached by a library as any library's is.
- What qemu cannot show: name resolution (bionic asks the system's `netd`), and a failed `exec` (reported as a child
  ending with 127); std/net and std/os have tests of both, which `make android-test` leaves out.

## A whole app: the sample

`make android-apk` builds examples/android into `build/android/olang-sample.apk` (with the variables above set):

1. `native.olang` as `libnative.so`, and `probe.olang` - a small program - as `libprobe.so`;
2. `aapt2 link` makes the APK from `AndroidManifest.xml` against `android.jar` (`android.app.NativeActivity`,
   `hasCode="false"`, `android.app.lib_name` naming `native`, minSdk 29, targetSdk 36);
3. both libraries are added under `lib/arm64-v8a/`, every entry's time fixed, so one checkout always gives the same
   bytes;
4. `zipalign -P 16` aligns it (16 KB pages) and `apksigner` signs it with `examples/android/debug.keystore` (password
   `android`, alias `olangdebug`), a debug key committed so that every build is signed alike and installs over the last.

Install it with `adb install build/android/olang-sample.apk` (or copy it to the phone and open it). Check it here with
`aapt2 dump badging build/android/olang-sample.apk` and `llvm-readelf --dyn-syms` on the libraries.

## Running programs an app ships or downloads

An app cannot run a file it wrote itself: Android (since 10, for an app targeting 29 or later) refuses `exec` of
anything in the app's own data directories. Two routes are open, and the sample checks both on the phone:

- **Ship the program as a native library.** A program named `libNAME.so` under `lib/arm64-v8a/` in the APK, with
  `android:extractNativeLibs="true"`, is unpacked into the app's `nativeLibraryDir`, from where it may be run. The
  sample finds that directory as the one its own `libnative.so` was loaded from (`/proc/self/maps`) and runs
  `libprobe.so` there.
- **Run it through the system's loader.** `/system/bin/linker64 FILE ARGS` runs a program anywhere the app can read:
  the loader is the program `exec` starts, and it maps `FILE` itself. The sample copies `libprobe.so` into its files
  directory and runs it this way - the route a program downloaded at run time takes.

On screen the sample draws two bands over its background, green where a check passed and red where it failed: the
upper for the native-library route, the lower for the loader route. The system log says what each printed:

```
adb logcat -s olang
```

with lines such as `nativeLibraryDir exec: status 0, said 'olang probe ok: direct'`. Touches and keys are logged
there too, and each touch changes the background's colour.
