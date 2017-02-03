#!/bin/bash

set -xe

source /usr/local/share/bootstrap/common_functions.sh

if [ -L "$0" ] ; then
    DIR="$(dirname "$(readlink -f "$0")")" ;
else
    DIR="$(dirname "$0")" ;
fi

cd /app || exit 1

set +e
is_chown_forbidden
IS_CHOWN_FORBIDDEN=$?
set -e



# Download the static assets
set +e
is_hem_project
IS_HEM=$?
set -e


do_magento_install_finalise
