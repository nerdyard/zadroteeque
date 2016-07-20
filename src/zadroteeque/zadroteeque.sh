#!/usr/bin/env bash

source /usr/lib/leicht/leicht.sh

case `echo $4 | cut -f 1 -d ' '` in
    "/listchats")
    leicht_send_message "$2" "$3" "`cat /opt/zadroteeque/data/chat-list.txt`" "false" "/var/run/zadroteeque.sock"
    ;;
esac
