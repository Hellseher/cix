#!/usr/bin/env bash
# File          : cix-stat.sh
# Created       : <2016-11-20 Sun 21:59:18 GMT> sharlatan
# Last Modified : <2016-11-20 Sun 23:58:42 GMT> sharlatan
# Author        : sharlatan <sharlatanus@gmail.com>
# Short :


ABSPATH="$(dirname $(readlink -f $0))"

ls_cmd_distribution() {
    # List how many examplas of command in project.
    find "$ABSPATH"/spices -type f -name "*org" \
         -exec grep -oP "(?<=-\s).+(?=-[0-9]{12})" {} \; \
        | sort \
        | uniq -c \
        | sort -nr
}

main() {
    ls_cmd_distribution
}

main "$@"
# End of cix-stat.sh
