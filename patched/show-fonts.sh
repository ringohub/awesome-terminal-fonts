#!/usr/local/bin/zsh

if [[ $1 ]];then
  cat ${1} | sed -e "s/.*'\(.*\)'/printf \"\\\u\1: \1\\\t\"/" | grep printf | zsh
fi
