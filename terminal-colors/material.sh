#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0546e7a
  \e]P1ff5370
  \e]P2c3e88d
  \e]P3ffcb6b
  \e]P482aaff
  \e]P5c792ea
  \e]P689ddff
  \e]P7ffffff
  \e]P8546e7a
  \e]P9ff5370
  \e]PAc3e88d
  \e]PBffcb6b
  \e]PC82aaff
  \e]PDc792ea
  \e]PE89ddff
  \e]PFffffff
  "
  # get rid of artifacts
  clear
fi
