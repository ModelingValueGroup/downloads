unset downloads_url
declare -Ax downloads_url=(
    [eclipse-java-2022-03-linux-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-03-M3-linux-gtk-x86_64.tar.gz" 
    [eclipse-java-2022-03-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-03-M3-macosx-cocoa-aarch64.tar.gz" 
    [eclipse-java-2022-03-macosx-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-03-M3-macosx-cocoa-x86_64.tar.gz" 
    [eclipse-java-2022-03-win32-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-03-M3-win32-x86_64.zip" 
    [eclipse-modeling-2022-03-linux-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-modeling-2022-03-M3-linux-gtk-x86_64.tar.gz" 
    [eclipse-modeling-2022-03-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-modeling-2022-03-M3-macosx-cocoa-aarch64.dmg" 
    [eclipse-modeling-2022-03-macosx-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-modeling-2022-03-M3-macosx-cocoa-x86_64.dmg" 
    [eclipse-modeling-2022-03-win32-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-modeling-2022-03-M3-win32-x86_64.zip" 
    [java-jdk-11-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-linux_x64.zip" 
    [java-jdk-11-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-macosx_aarch64.zip" 
    [java-jdk-11-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-macosx_x64.zip" 
    [java-jdk-11-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-win_x64.zip" 
    [java-jdk-17-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jdk17.0.2-linux_x64.zip" 
    [java-jdk-17-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jdk17.0.2-macosx_aarch64.zip" 
    [java-jdk-17-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jdk17.0.2-macosx_x64.zip" 
    [java-jdk-17-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jdk17.0.2-win_x64.zip" 
    [java-jre-11-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-linux_x64.zip" 
    [java-jre-11-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-macosx_aarch64.zip" 
    [java-jre-11-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-macosx_x64.zip" 
    [java-jre-11-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-win_x64.zip" 
    [java-jre-17-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jre17.0.2-linux_x64.zip" 
    [java-jre-17-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jre17.0.2-macosx_aarch64.zip" 
    [java-jre-17-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jre17.0.2-macosx_x64.zip" 
    [java-jre-17-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.32.13-ca-jre17.0.2-win_x64.zip" 
)
unset downloads_md5
declare -Ax downloads_md5=(
    [eclipse-java-2022-03-linux-x86_64]="930bd876fb86a84cfe99f0139f8e99e8" 
    [eclipse-java-2022-03-macosx-aarch64]="5d54abd69e64519d7f7071c98715c3ad" 
    [eclipse-java-2022-03-macosx-x86_64]="81685544a6987ff09aa3d24416688ead" 
    [eclipse-java-2022-03-win32-x86_64]="9b1bc89ff1509e4c999f7a5dee0da7f7" 
    [eclipse-modeling-2022-03-linux-x86_64]="58ee0da93310657a2b6edbd6c9edc70b" 
    [eclipse-modeling-2022-03-macosx-aarch64]="910c136fe463f3a81e2dee7368623a2b" 
    [eclipse-modeling-2022-03-macosx-x86_64]="52e09004ab76cbfda1905d2c3b75ba03" 
    [eclipse-modeling-2022-03-win32-x86_64]="1380c75829cff08c62af7cf06e6be4d6" 
    [java-jdk-11-linux-x64]="e7aebf2faf28c8d617c1f1fb43a50177" 
    [java-jdk-11-macosx-aarch64]="fdfca086b198047917de9fcf4fbfef9b" 
    [java-jdk-11-macosx-x64]="ef94c4b00799b7c8f729b4278acacfc4" 
    [java-jdk-11-win-x64]="8e53c559d108ae1cbeb65b5d37301bde" 
    [java-jdk-17-linux-x64]="13ab9b59343466344d7692f07d564848" 
    [java-jdk-17-macosx-aarch64]="50520c7c5407f5f1ecda4b4217cd49fe" 
    [java-jdk-17-macosx-x64]="15f6482892893a94fe71781fec2b4e57" 
    [java-jdk-17-win-x64]="f7c90efcd1788eebd8e99f87a70367f6" 
    [java-jre-11-linux-x64]="709f33578d699be5c2fb1a2f5c25a57d" 
    [java-jre-11-macosx-aarch64]="3c5bd2a2d66b22a3798887f8248cf1a7" 
    [java-jre-11-macosx-x64]="66c6e91f66ffba8a2810854242907a8a" 
    [java-jre-11-win-x64]="911a6b7afe42dc6239cce1e2b3ddfbbe" 
    [java-jre-17-linux-x64]="250d51208d51990149d3e040d9894d5c" 
    [java-jre-17-macosx-aarch64]="831a0a760a24647588f1e1a768584ef9" 
    [java-jre-17-macosx-x64]="8622433eadca1ff9f189ef4c9ac38f62" 
    [java-jre-17-win-x64]="e2beb167c7f469af904f51042252b7d6" 
)
unset download_product
declare -ax download_product=(
    [0]="eclipse" 
    [1]="java"
)
unset download_java_product
declare -ax download_java_product=(
    [0]="jdk" 
    [1]="jre"
)
unset download_java_version
declare -ax download_java_version=(
    [0]="11" 
    [1]="17"
)
unset download_java_platform
declare -ax download_java_platform=(
    [0]="linux" 
    [1]="macosx" 
    [2]="win"
)
unset download_java_arch
declare -ax download_java_arch=(
    [0]="aarch64" 
    [1]="x64"
)
unset download_eclipse_product
declare -ax download_eclipse_product=(
    [0]="java" 
    [1]="modeling"
)
unset download_eclipse_version
declare -ax download_eclipse_version=(
    [0]="2022-03"
)
unset download_eclipse_platform
declare -ax download_eclipse_platform=(
    [0]="linux" 
    [1]="macosx" 
    [2]="win32"
)
unset download_eclipse_arch
declare -ax download_eclipse_arch=(
    [0]="aarch64" 
    [1]="x86_64"
)
