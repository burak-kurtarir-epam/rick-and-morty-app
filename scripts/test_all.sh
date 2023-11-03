#!/bin/sh
CURRENT_DIR=$(dirname "$0")
PACKAGES_DIR="packages"
TEST_DIR="test"

cd "$CURRENT_DIR/.."
echo "Running tests..."
echo "════ Testing root package ════"
flutter test

cd $PACKAGES_DIR

for d in $(ls); do
    if [ -d "$d/$TEST_DIR" ]; then
        echo "════ Testing $d package ════"
        cd $d
        flutter test
        cd ..
    fi
done
