#!/bin/sh
#
# Copyright (C) 2020 James Fuller <jim.fuller@webcomposite.com>
#
# SPDX-License-Identifier: MIT
#

set -e

nc -dkl 8080 &

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- sleep "$@"
fi

exec "$@"
