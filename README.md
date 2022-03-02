# downloads
just a mirror of various downloads for easy access in our scripts
mirrored files can be downloaded at: ```https://github.com/modelingvaluegroup/downloads/raw/master/...```

If you are using bash you can get the urls in an associative aray with:
```shell
source <(curl -s -o - 'https://github.com/modelingvaluegroup/downloads/raw/master/index.sh')
echo "download latest JDK11 at: ${downloads_url[jdk-11-macosx-aarch64]}"
echo "                with md5: ${downloads_md5[jdk-11-macosx-aarch64]}"
```
will give:

```
download latest JDK11 at: https://github.com/modelingvaluegroup/downloads/raw/master/jdk/zulu11.54.25-ca-jdk11.0.14.1-macosx_aarch64.zip
                with md5: fdfca086b198047917de9fcf4fbfef9b
```

## jdk
mirror of downloads under https://www.azul.com/downloads/?package=jdk

## jre
mirror of downloads under https://www.azul.com/downloads/?package=jre
