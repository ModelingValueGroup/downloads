base="https://github.com/modelingvaluegroup/downloads/raw/master"

unset       downloads_url downloads_md5
declare -Ax downloads_url downloads_md5

unset       download_product
declare -ax download_product

unset       download_java_product download_java_version download_java_platform download_java_arch
declare -ax download_java_product download_java_version download_java_platform download_java_arch

unset       download_eclipse_product download_eclipse_version download_eclipse_platform download_eclipse_arch
declare -ax download_eclipse_product download_eclipse_version download_eclipse_platform download_eclipse_arch

unset       download_maven_product download_maven_version
declare -ax download_maven_product download_maven_version

unset       download_nsis_access_control_version
declare -ax download_nsis_access_control_version

makeSet() {
    printf "%s\n" "$@" | sort -u
}
makeSetRev() {
    printf "%s\n" "$@" | sort -ur
}
addProduct() {
                          download_product=($(makeSet     "${download_product[@]}"                     "$1")); shift
}
addJavaKeys() {
                      download_java_product=($(makeSet    "${download_java_product[@]}"                "$1")); shift
                      download_java_version=($(makeSetRev "${download_java_version[@]}"                "$1")); shift
                     download_java_platform=($(makeSet    "${download_java_platform[@]}"               "$1")); shift
                         download_java_arch=($(makeSet    "${download_java_arch[@]}"                   "$1")); shift
}
addEclipseKeys() {
                   download_eclipse_product=($(makeSet    "${download_eclipse_product[@]}"             "$1")); shift
                   download_eclipse_version=($(makeSetRev "${download_eclipse_version[@]}"             "$1")); shift
                  download_eclipse_platform=($(makeSet    "${download_eclipse_platform[@]}"            "$1")); shift
                      download_eclipse_arch=($(makeSet    "${download_eclipse_arch[@]}"                "$1")); shift
}
addMavenKeys() {
                     download_maven_product=($(makeSet    "${download_maven_product[@]}"               "$1")); shift
                     download_maven_version=($(makeSetRev "${download_maven_version[@]}"               "$1")); shift
}
addNsisAccessControlKeys() {
       download_nsis_access_control_version=($(makeSetRev "${download_nsis_access_control_version[@]}" "$1")); shift
}
doJava() {
    local product="java"
    pushd $product >/dev/null
    addProduct "$product"
    for f in *; do
        printf "  ...%-20s - %s\n" "$product" "$f" 1>&2
        p="$(sed 's/^zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip$/\3/' <<<$f)"
        v="$(sed 's/^zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip$/\1/' <<<$f)"
        o="$(sed 's/^zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip$/\5/' <<<$f)"
        a="$(sed 's/^zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip$/\6/' <<<$f)"
        if [[ "$p" == "$f" ]]; then echo "ERROR: could not parse filename $f"; exit 99; fi
        entry="$product-$p-$v-$o-$a"
        downloads_url[$entry]="$base/$product/$f"
        downloads_md5[$entry]="$(md5 <"$f")"
        addJavaKeys "$p" "$v" "$o" "$a"
    done
    popd >/dev/null
}
doEclipse() {
    local product="eclipse"
    pushd "$product" >/dev/null
    addProduct "$product"
    for f in *; do
        printf "  ...%-20s - %s\n" "$product" "$f" 1>&2
        p="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\1/' <<<$f)"
        v="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\2/' <<<$f)"
        m="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\3/' <<<$f)"
        o="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\4/' <<<$f)"
        d="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\6/' <<<$f)"
        a="$(sed -E 's/^eclipse-([^-]+)-([0-9]+-[0-9]+)-([MR0-9]+)-([^-]+)(-([^-]+))?-(.*)[.](tar[.]gz|zip|dmg)$/\7/' <<<$f)"
        if [[ "$p" == "$f" ]]; then echo "ERROR: could not parse filename $f"; exit 99; fi
        entry="$product-$p-$v-$o-$a"
        downloads_url[$entry]="$base/$product/$f"
        downloads_md5[$entry]="$(md5 <"$f")"
        addEclipseKeys "$p" "$v" "$o" "$a"
    done
    popd >/dev/null
}
doMaven() {
    local product="maven"
    pushd "$product" >/dev/null
    addProduct "$product"
    for f in *; do
        printf "  ...%-20s - %s\n" "$product" "$f" 1>&2
        p="$(sed -E 's/^apache-maven-([0-9.]+)-(bin|src)[.](tar[.]gz|zip|dmg)$/\2/' <<<$f)"
        v="$(sed -E 's/^apache-maven-([0-9.]+)-(bin|src)[.](tar[.]gz|zip|dmg)$/\1/' <<<$f)"
        if [[ "$p" == "$f" ]]; then echo "ERROR: could not parse filename $f"; exit 99; fi
        entry="$product-$p-$v"
        downloads_url[$entry]="$base/$product/$f"
        downloads_md5[$entry]="$(md5 <"$f")"
        addMavenKeys "$p" "$v"
    done
    popd >/dev/null
}
doNsisAccessControl() {
    local product="nsisAccessControl"
    pushd "$product" >/dev/null
    addProduct "$product"
    for f in *; do
        printf "  ...%-20s - %s\n" "$product" "$f" 1>&2
        v="$(sed -E 's/^AccessControl-([0-9.]+).zip$/\1/' <<<$f)"
        if [[ "$v" == "$f" ]]; then echo "ERROR: could not parse filename $f"; exit 99; fi
        entry="$product-$v"
        downloads_url[$entry]="$base/$product/$f"
        downloads_md5[$entry]="$(md5 <"$f")"
        addNsisAccessControlKeys "$v"
    done
    popd >/dev/null
}
formattedDeclare() {
    for v in "$@"; do
        echo "unset $v"
        declare -p $v | sed 's/=(.*/=(/'
        declare -p $v | sed 's/.*=(//;s/\[/\n    [/g;s/)//' | sed '/^$/d'| sort
        echo ")"
    done
}
main() {
    doJava
    doEclipse
    doMaven
    doNsisAccessControl

    formattedDeclare \
        downloads_url \
        downloads_md5 \
        download_product \
        download_java_product \
        download_java_version \
        download_java_platform \
        download_java_arch \
        download_eclipse_product \
        download_eclipse_version \
        download_eclipse_platform \
        download_eclipse_arch \
        download_maven_product \
        download_maven_version \
        download_nsis_access_control_version
}

main > index.sh