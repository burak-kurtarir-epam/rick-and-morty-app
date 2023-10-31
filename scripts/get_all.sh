#!/bin/sh
CWD=$(pwd)
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"

get_all_cicd() {
    flutter pub get
    for d in $(ls $PACKAGES_DIR); do
        PACKAGE_DIR="$PACKAGES_DIR/$d"
        cd $PACKAGE_DIR && flutter pub get
    done
}

get_all() {
    fvm flutter pub get
    for d in $(ls $PACKAGES_DIR); do
        PACKAGE_DIR="$PACKAGES_DIR/$d"
        echo "Entering $PACKAGES_RELATIVE_PATH/$d"
        cd $PACKAGE_DIR && flutter pub get
    done
}

case $1 in
    --cicd)
        get_all_cicd
        ;;
    *)
        # if no parameter passed
        get_all
        ;;
esac
