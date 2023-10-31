#!/bin/sh
CWD=$(pwd)

$CWD/scripts/clean_all.sh
$CWD/scripts/get_all.sh
$CWD/scripts/gen_all.sh