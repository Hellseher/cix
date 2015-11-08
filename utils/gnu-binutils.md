<!--
File          : gnu-binutils.md

Created       : Mon 02 Nov 2015 22:18:23
Last Modified : Sat 07 Nov 2015 23:07:21
Maintainer    : sharlatan
-->

# GNU Binutils [↷](https://www.gnu.org/software/binutils/) #
The GNU Binutils are a collection of binary tools.

## rpm ##
_ReadHat, CentOS, Fedora_

*   [Binutils on RedHat](http://sources.redhat.com/binutils)

    
    $: sudo yum install binutils

## deb ##

    $: sudo apt-get search binutils
    $: sudo apt-get install binutils-<what_you_need>

## src ##
Check the lates update on https://ftp.gnu.org/gnu/binutils/

---

    ar        - A utility for creating, modifying and extracting from archives.
    as        - the GNU assembler.
    ld        - the GNU linker.
    nm        - Lists symbols from object files.

    gold      - A new, faster, ELF only linker, still in beta test.
    size      - Lists the section sizes of an object or archive file.

    gprof     - Displays profiling information.
    strip     - Discards symbols.

    ranlib    - Generates an index to the contents of an archive.
    windmc    - A Windows compatible message compiler.

    c++filt   - Filter to demangle encoded C++ symbols.
    dlltool   - Creates files for building and using DLLs.
    nlmconv   - Converts object code into an NLM.
    objcopy   - Copies and translates object files.
    objdump   - Displays information from object files.
    readelf   - Displays information from any ELF format object file.
    strings   - Lists printable strings from files.
    windres   - A compiler for Windows resource files.

    addr2line - Converts addresses into filenames and line numbers.
