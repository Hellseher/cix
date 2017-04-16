#!/usr/bin/env bash
# File     : cix-stat.sh
# Created  : <2016-11-20 Sun 21:59:18 GMT> sharlatan
# Modified : <2017-4-16 Sun 12:01:44 BST> sharlatan
# Author   : sharlatan <sharlatanus@gmail.com>
# Short    :


ABS_PATH="$(dirname "$(readlink -f "$0")")"

ls_cmd_distribution()
{ # List how many examplas of command in project.
    { echo "QTY CMD" ;
      find "$ABS_PATH"/spices -type f -name "*org" \
           -exec grep -oP "(?<=\*\*\*\*\s).+(?=-[0-9]{12})" {} \; \
          | sort \
          | uniq -c \
          | sort -nr; } | column -t
}

main() {
    ls_cmd_distribution
}

main "$@"
# End of cix-stat.sh
