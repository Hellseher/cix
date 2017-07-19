#!/usr/bin/env bash
# File     : cix-stat.sh
# Created  : <2016-11-20 Sun 21:59:18 GMT> sharlatan
# Modified : <2017-7-18 Tue 22:53:06 BST> sharlatan
# Author   : sharlatan <sharlatanus@gmail.com>
# Short    : Show statistic of examples.


ABS_PATH="$(dirname "$(readlink -f "$0")")"

ls_cmd_distribution()
{ # List how many examplas of command in project.
    { echo "QTY CMD PKG" ;
      echo --- --- ---;
      [ -e "$ABS_PATH"/spices ] &&
          find "$ABS_PATH"/spices -type f -name "*org"  \
               -exec  grep -oHP "(?<=\*\*\*\*\s).+(?=-[0-9]{12})" {} \; \
              | sed -e 's/^\/.*cix-//g' \
              | awk -F":" '{print $2," ",$1}' \
              | sed -e 's/\.org//g' \
              | sort \
              | uniq -c \
              | sort -nr;
    } | column -t
}

oneliner_or_script()
{ # Count oneliner and script in the project.
    { printf "Onliners: ";
      find "$ABS_PATH"/spices -type f -name "*org" -print0 \
          | xargs -0 grep -oP "^:\s+~" | wc -l;
      printf "Scripts: ";
      find "$ABS_PATH"/spices -type f -name "*org" -print0 \
          | xargs -0 grep -o "\#+BEGIN_SRC" | wc -l;
    } | column -t
}

main() {
    printf "Distribution per subjest:\n\n"
    ls_cmd_distribution
    printf "\nDistribution per example:\n\n"
    oneliner_or_script
}

main "$@"
# End of cix-stat.sh
