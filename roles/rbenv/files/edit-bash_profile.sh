#!/bin/sh
###############################################################################
#
# rbenvのための、.bash_profile編集
#
###############################################################################
NAME=${0##*/}
PROFILE=~/.bash_profile

if [ ! -e ${PROFILE:?} ]; then
  echo "${NAME:?}: ${PROFILE:?} not exists." 1>&2
  exit 1
fi

if grep "\$HOME/\.rbenv/bin" ${PROFILE:?} > /dev/null; then
  echo "${NAME:?}: OK" 1>&2
  exit 0
fi

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ${PROFILE:?}
echo 'eval "$(rbenv init -)"'               >> ${PROFILE:?}
exit 0

