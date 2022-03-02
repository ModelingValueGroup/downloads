(
    base="https://modelingvaluegroup.github.io/downloads"
    echo "declare -A downloads"
    for d in jdk jre; do
        (   cd $d
            for z in zulu*.zip; do
                j="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\3/' <<<$z)"
                v="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\1/' <<<$z)"
                o="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\5/' <<<$z)"
                a="$(sed 's/zulu\([^.]*\)[.]\([0-9.]*\)-ca-\(...\)\([0-9.]*\)-\([a-z]*\)_\([a-z0-9]*\)[.]zip/\6/' <<<$z)"
                echo "downloads['$j-$v-$o-$a']='$base/$d/$z'"
            done
        )
    done
) > index.sh