# downloads
just a mirror of various downloads for easy access in our scripts
mirrorde files can be downloaded at: ```https://modelingvaluegroup.github.io/downloads/...```

If you are using bash you can get the urls in an associative aray with:
```shell
source <(curl -s -o - 'https://modelingvaluegroup.github.io/downloads/index.sh')
echo "download latest JDK11 at: ${downloads_url[jdk-11-macosx-aarch64]}"
echo "                with md5: ${downloads_md5[jdk-11-macosx-aarch64]}"
```
will give:

```
source <(curl -s -o - 'https://modelingvaluegroup.github.io/downloads/index.sh')
echo "download latest JDK11 at: ${downloads_url[jdk-11-macosx-aarch64]}"
echo "                with md5: ${downloads_md5[jdk-11-macosx-aarch64]}"
```

## jdk
mirror of downloads under https://www.azul.com/downloads/?package=jdk

## jre
mirror of downloads under https://www.azul.com/downloads/?package=jre
