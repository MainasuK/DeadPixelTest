#!/usr/bin/env bash

set -xeu
set -o pipefail

SDK="${SDK:-iphonesimulator}"       # use simualtor to skip code signing
PROJECT="${PROJECT:-DeadPixelTest.xcodeproj}"
SCHEME="${SCHEME:-DeadPixelTest (iOS)}"
CONFIGURATION=${CONFIGURATION:-Debug}

xcrun xcodebuild \
    -project "${PROJECT}" \
    -scheme "${SCHEME}" \
    -configuration "${CONFIGURATION}" \
    -sdk "${SDK}" \
    -parallelizeTargets \
    -showBuildTimingSummary \
    clean \
    build
