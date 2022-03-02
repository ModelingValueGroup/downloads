base="https://modelingvaluegroup.github.io/downloads"
forall() {
    local name="$1"
    local f="$2"

    echo "declare -A $name"
    for d in jdk jre; do
        (   cd $d
            for z in zulu*.zip; do
                echo "  ...$name   -   $z" 1>&2
                j="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\3/' <<<$z)"
                v="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\1/' <<<$z)"
                o="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\5/' <<<$z)"
                a="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\6/' <<<$z)"
                echo "$name[$j-$v-$o-$a]='$("$f" "$d" "$z")'"
            done
        )
    done
}
(
    make_url() {
        echo "$base/$1/$2"
    }
    forall "downloads_url" make_url

    make_md5() {
        md5 <$2
    }
    forall "downloads_md5" make_md5
) > index.sh