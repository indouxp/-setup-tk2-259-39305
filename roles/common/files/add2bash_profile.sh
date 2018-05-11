#!/bin/sh
###############################################################################
#
# .bash_profileへの追加を行う。
#
#
###############################################################################
NAME=${0##*/}

BASH_PROFILE=~/.bash_profile

if ! grep -F "$@" ${BASH_PROFILE:?} > /dev/null; then
  echo "# ${NAME:?}: `date +%Y%m%d`" >> ${BASH_PROFILE:?}
  echo "$@"                          >> ${BASH_PROFILE:?}
fi

exit 0

