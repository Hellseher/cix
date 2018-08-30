#!/usr/bin/env bash
# File     : cix-stat.sh
# Created  : <2016-11-20 Sun 21:59:18 GMT> sharlatan
# Modified : <2018-8-30 Thu 22:57:49 BST> Sharlatan
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

ls_pkg_distribution()
{ # Count examples per packge
    { echo "QTY PKG" ;
      echo --- ---;
      [ -e "$ABS_PATH"/spices ] &&
          find "$ABS_PATH"/spices -type f -name "*org"  \
               -exec  grep -oHP "(?<=\*\*\*\*\s).+(?=-[0-9]{12})" {} \; \
              | sed -e 's/^\/.*cix-//g' \
                    -e 's/:.*$//g' \
                    -e 's/\.org//g' \
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

man_doc()
{ # List a table of CMD-MAN-DESC
    local cmd="$1"

    { echo \| CMD \| MAN \| DESCRIPTION\|; \
      rpm -ql "$cmd" \
          | grep -oP "(?<=in/).+" \
          | xargs -n1 whatis \
          | sed -e 's/^/\|/g' \
                -e 's/\(([a-z0-9]\{1,2\})\)/\|\1\|/' \
                -e 's/ - //g' \
                -e 's/$/\|/g' \
                -e 's/.*[pP]erl.*//g' \
                -e 's/.*::.*//g';
    } | column -t -s\| -o\|
}

manifest()
{ # Compile a MANIFEST file
    # Format: UNIXTIME.MLSEC TYPE SIZE PATH
    find ./ -printf "%T@ %y %s %p\n" \
        | sed -e '/\.git/d' \
              -e '/\#/d' \
              -e '/MANIFEST/d' \
              -e '/\/org\//d' \
              -e '/\/org/d' \
              -e '/\.\/$/d' \
        | sort -rn \
        | column -t \
        | tee ./MANIFEST
}

main()
{
    local opt="$1"

    case "$opt" in
        stat)
            printf "Distribution per command:\n\n"
            ls_cmd_distribution
            printf "\nDistribution per package:\n\n"
            ls_pkg_distribution
            printf "\nDistribution per example:\n\n"
            oneliner_or_script
            ;;
        mandoc)
            man_doc "$2"
            ;;
        manifest)
            manifest
            ;;
    esac
}

main "$@"
# End of cix-stat.sh
