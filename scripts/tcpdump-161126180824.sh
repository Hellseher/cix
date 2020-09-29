#!/usr/bin/env bash

IPV4_RE="((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"
TIME_STAMP="$(date +%Y%m%d%H%M%S)"
DUMP_FILE="tcpdump_dmp"

[[ "$UID" != "0" ]] && exit 1
echo "Start capturing at $TIME_STAMP"
timeout 10 tcpdump -nnvvS -i any > "$DUMP_FILE" 2>/dev/null

(echo "QTY IP";
 grep -oP "$IPV4_RE" "$DUMP_FILE"\
     | sort -n \
     | uniq -c \
     | sort -rn) | column -t
