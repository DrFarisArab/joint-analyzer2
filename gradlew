#!/usr/bin/env sh
# Self-contained gradlew: downloads Gradle 8.4 on first run, no binary jar needed.
set -e
GRADLE_VERSION="8.4"
GRADLE_DIR="$HOME/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}-bin"
GRADLE_BIN="$GRADLE_DIR/gradle-${GRADLE_VERSION}/bin/gradle"
if [ ! -f "$GRADLE_BIN" ]; then
    echo "Downloading Gradle ${GRADLE_VERSION}..."
    mkdir -p "$GRADLE_DIR"
    curl -fL "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" \
         -o "$GRADLE_DIR/gradle.zip"
    unzip -q "$GRADLE_DIR/gradle.zip" -d "$GRADLE_DIR"
    rm "$GRADLE_DIR/gradle.zip"
fi
exec "$GRADLE_BIN" "$@"
