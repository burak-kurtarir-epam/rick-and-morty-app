#!/bin/sh
CURRENT_DIR=$(dirname "$0")
PACKAGES_DIR="packages"
TEST_DIR="test"
EXIT_CODE=0

cd "$CURRENT_DIR/.."
echo "Running tests..."
echo "════ Testing root package ════"
flutter test

# Capture the exit code of the flutter test command for the root package
EXIT_CODE=$?

cd $PACKAGES_DIR

for d in $(ls); do
    if [ -d "$d/$TEST_DIR" ]; then
        echo "════ Testing $d package ════"
        cd $d
        flutter test
        # Capture the exit code of the flutter test command for each package
        PACKAGE_EXIT_CODE=$?
        # If the package tests fail, update the exit code
        if [ $PACKAGE_EXIT_CODE -ne 0 ]; then
            EXIT_CODE=$PACKAGE_EXIT_CODE
        fi
        cd ..
    fi
done

# Exit with the final exit code, indicating success or failure
exit $EXIT_CODE