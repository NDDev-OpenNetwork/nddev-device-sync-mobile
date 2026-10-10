set shell := ["bash", "-euo", "pipefail", "-c"]

check:
    dart format --output=none --set-exit-if-changed lib
    flutter analyze --no-pub

build-android:
    CARGO_BUILD_JOBS=4 flutter build apk --debug --target-platform android-arm64
