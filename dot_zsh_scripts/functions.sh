#!/bin/bash

# FUNCTIONS
# =========


# Get current Platform
get-platform() {
  case "$(uname -s)" in
    Darwin)
      echo 'apple'
      ;;

    Linux)
      echo 'linux'
      ;;

    CYGWIN*|MINGW32*|MSYS*)
      echo 'windows'
      ;;

    *)
      echo 'unknown'
      exit 1
      ;;
  esac
}


# Pretty Print JSON Curl Responses
# Need to have jq installed
jcurl() {
  curl -s "$@" | jq .
}

# List all of current user's processes
myps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }


# Find CPU and Memory Hogs
cpuhogs() { ps wwaxr -o pid,stat,%cpu,time,command | head -10 ;}
memhogs() { ps wwaxm -o pid,stat,vsize,rss,time,command | head -10; }

# Restart Wi-Fi for macOs
restart-wifi() {
  ifconfig en0 down;
  ifconfig en0 up;
}