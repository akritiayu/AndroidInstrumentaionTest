#!/usr/bin/env bash
./initialize-android.sh
android create avd --force -n test -t "Google Inc.:Google APIs:17" --abi armeabi-v7a --skin WXGA800-7in --sdcard 10M
adb devices
emulator -avd test -no-audio -no-window &
./android-wait-for-emulator.sh
adb shell input keyevent 82 &
./gradlew test