unset downloads_url
declare -Ax downloads_url=(
    [eclipse-java-2021-12-linux-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2021-12-R-linux-gtk-aarch64.tar.gz" 
    [eclipse-java-2021-12-linux-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2021-12-R-linux-gtk-x86_64.tar.gz" 
    [eclipse-java-2021-12-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2021-12-R-macosx-cocoa-aarch64.dmg" 
    [eclipse-java-2021-12-macosx-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2021-12-R-macosx-cocoa-x86_64.dmg" 
    [eclipse-java-2021-12-win32-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2021-12-R-win32-x86_64.zip" 
    [eclipse-java-2022-06-linux-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-06-R-linux-gtk-aarch64.tar.gz" 
    [eclipse-java-2022-06-linux-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-06-R-linux-gtk-x86_64.tar.gz" 
    [eclipse-java-2022-06-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-06-R-macosx-cocoa-aarch64.dmg" 
    [eclipse-java-2022-06-macosx-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-06-R-macosx-cocoa-x86_64.dmg" 
    [eclipse-java-2022-06-win32-x86_64]="https://github.com/modelingvaluegroup/downloads/raw/master/eclipse/eclipse-java-2022-06-R-win32-x86_64.zip" 
    [java-jdk-11-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-linux_x64.zip" 
    [java-jdk-11-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-macosx_aarch64.zip" 
    [java-jdk-11-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-macosx_x64.zip" 
    [java-jdk-11-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jdk11.0.14.1-win_x64.zip" 
    [java-jdk-17-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jdk17.0.3-linux_x64.zip" 
    [java-jdk-17-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jdk17.0.3-macosx_aarch64.zip" 
    [java-jdk-17-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jdk17.0.3-macosx_x64.zip" 
    [java-jdk-17-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jdk17.0.3-win_x64.zip" 
    [java-jre-11-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-linux_x64.zip" 
    [java-jre-11-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-macosx_aarch64.zip" 
    [java-jre-11-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-macosx_x64.zip" 
    [java-jre-11-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu11.54.25-ca-jre11.0.14.1-win_x64.zip" 
    [java-jre-17-linux-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jre17.0.3-linux_x64.zip" 
    [java-jre-17-macosx-aarch64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jre17.0.3-macosx_aarch64.zip" 
    [java-jre-17-macosx-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jre17.0.3-macosx_x64.zip" 
    [java-jre-17-win-x64]="https://github.com/modelingvaluegroup/downloads/raw/master/java/zulu17.34.19-ca-jre17.0.3-win_x64.zip" 
    [maven-bin-3.8.4]="https://github.com/modelingvaluegroup/downloads/raw/master/maven/apache-maven-3.8.4-bin.zip" 
    [maven-bin-3.8.6]="https://github.com/modelingvaluegroup/downloads/raw/master/maven/apache-maven-3.8.6-bin.zip" 
    [maven-src-3.8.4]="https://github.com/modelingvaluegroup/downloads/raw/master/maven/apache-maven-3.8.4-src.zip" 
    [maven-src-3.8.6]="https://github.com/modelingvaluegroup/downloads/raw/master/maven/apache-maven-3.8.6-src.zip" 
    [nsisAccessControl-1.0.8.3]="https://github.com/modelingvaluegroup/downloads/raw/master/nsisAccessControl/AccessControl-1.0.8.3.zip" 
)
unset downloads_md5
declare -Ax downloads_md5=(
    [eclipse-java-2021-12-linux-aarch64]="de7652730befef933e089cf4bdc9b665" 
    [eclipse-java-2021-12-linux-x86_64]="cd47578f1aa0fda80dbb2b6d8025e507" 
    [eclipse-java-2021-12-macosx-aarch64]="41eb032eba9d0cd7eb0fea208bfed31a" 
    [eclipse-java-2021-12-macosx-x86_64]="5045798e0c7d6abde426acd66e5d2579" 
    [eclipse-java-2021-12-win32-x86_64]="0afe177f79f13a945259db6a23931dea" 
    [eclipse-java-2022-06-linux-aarch64]="9f756382c96a397220aabf5f460aed3c" 
    [eclipse-java-2022-06-linux-x86_64]="4666cd42c15da1b90ba416c82250b908" 
    [eclipse-java-2022-06-macosx-aarch64]="5c07d0ae47f3fd53d2d8c5aff2711612" 
    [eclipse-java-2022-06-macosx-x86_64]="4ca83e3d30862907dd49efefdd157aa5" 
    [eclipse-java-2022-06-win32-x86_64]="22c73580127a2c2fcb8e51c924e0d7b9" 
    [java-jdk-11-linux-x64]="e7aebf2faf28c8d617c1f1fb43a50177" 
    [java-jdk-11-macosx-aarch64]="fdfca086b198047917de9fcf4fbfef9b" 
    [java-jdk-11-macosx-x64]="ef94c4b00799b7c8f729b4278acacfc4" 
    [java-jdk-11-win-x64]="8e53c559d108ae1cbeb65b5d37301bde" 
    [java-jdk-17-linux-x64]="4f0f5f4462b80bb0618401ec0e879aad" 
    [java-jdk-17-macosx-aarch64]="73b3272459a745cd8fdb9933fc7306bb" 
    [java-jdk-17-macosx-x64]="b382e40b882ec6e8db8c1936d4c4b411" 
    [java-jdk-17-win-x64]="b3af9a6209639f107036d709b3bb4025" 
    [java-jre-11-linux-x64]="709f33578d699be5c2fb1a2f5c25a57d" 
    [java-jre-11-macosx-aarch64]="3c5bd2a2d66b22a3798887f8248cf1a7" 
    [java-jre-11-macosx-x64]="66c6e91f66ffba8a2810854242907a8a" 
    [java-jre-11-win-x64]="911a6b7afe42dc6239cce1e2b3ddfbbe" 
    [java-jre-17-linux-x64]="20880a56966fe011046e8094f56a1013" 
    [java-jre-17-macosx-aarch64]="eca2f4785221b320408803bd5462b7c4" 
    [java-jre-17-macosx-x64]="e448807ed85e40c72f5620f955ab38df" 
    [java-jre-17-win-x64]="ee6771325d2a3f54f7f3a3a36ef2ff71" 
    [maven-bin-3.8.4]="4face1fea2cf66bcb25303d4ba994bef" 
    [maven-bin-3.8.6]="b340ea83bfff9348059791d611df80dd" 
    [maven-src-3.8.4]="8e84b7a8c1549059d6d9c4ec8cf40c57" 
    [maven-src-3.8.6]="9036aadcd02431094b6367f1a1342109" 
    [nsisAccessControl-1.0.8.3]="6788149dcf34e89257d8d43b2a3aaa21" 
)
unset download_product
declare -ax download_product=(
    [0]="eclipse" 
    [1]="java" 
    [2]="maven" 
    [3]="nsisAccessControl"
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
)
unset download_eclipse_version
declare -ax download_eclipse_version=(
    [0]="2021-12" 
    [1]="2022-06"
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
unset download_maven_product
declare -ax download_maven_product=(
    [0]="bin" 
    [1]="src"
)
unset download_maven_version
declare -ax download_maven_version=(
    [0]="3.8.4" 
    [1]="3.8.6"
)
unset download_nsis_access_control_version
declare -ax download_nsis_access_control_version=(
    [0]="1.0.8.3"
)
