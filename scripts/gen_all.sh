#!/bin/sh
CWD=$(pwd)
PACKAGES_RELATIVE_PATH="packages"
PACKAGES_DIR="$CWD/$PACKAGES_RELATIVE_PATH"

dart run build_runner build --delete-conflicting-outputs

excludedPackages=("rm_api_services")

for package_name in $(ls $PACKAGES_DIR); do
    if [[ ! " ${excludedPackages[*]} " =~ " ${package_name} " ]]; then
         PACKAGE_DIR="$PACKAGES_DIR/$package_name"
         echo "Entering $PACKAGES_RELATIVE_PATH/$package_name"
         cd $PACKAGE_DIR && flutter dart run build_runner build --delete-conflicting-outputs
    fi
done
