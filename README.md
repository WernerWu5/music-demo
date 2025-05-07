# distribution_mall_flutter

app商城，flutter版本

## git提交规范制定
- fix: 类型 为 fix 的提交表示在代码库中修复了一个 bug（这和语义化版本中的 PATCH 相对应）；
- feat: 类型 为 feat 的提交表示在代码库中新增了一个功能（这和语义化版本中的 MINOR 相对应）；
- build: 用于修改项目构建系统，例如修改依赖库、外部接口或者升级 Node 版本等；
- chore: 用于对非业务性代码进行修改，例如修改构建流程或者工具配置等；
- ci: 用于修改持续集成流程，例如修改 Travis、Jenkins 等工作流配置；
- docs: 用于修改文档，例如修改 README 文件、API 文档等；
- style: 用于修改代码的样式，例如调整缩进、空格、空行等；
- refactor: 用于重构代码，例如修改代码结构、变量名、函数名等但不修改功能逻辑；
- perf: 用于优化性能，例如提升代码的性能、减少内存占用等；
- test: 用于修改测试用例，例如添加、删除、修改代码的测试用例等；

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

http://127.0.0.1:9101?uri=http://127.0.0.1:51707/kq_I-PoKP28=/

## 运行环境
测试环境
```
flutter run --dart-define=ENV=fat  --flavor fat
```

正式环境
```
flutter run --dart-define=ENV=production
```

## hive

```
flutter packages pub run build_runner build
```

## assets_generator 图片自动生成路径

全局安装后
```shell
dart pub global activate assets_generator
```
使用
```shell
agen -t d -s -r lwu
```

## riverpod 使用

```shell
dart run build_runner watch
```
将自动实时生成相关编码

ERROR:flutter/shell/platform/darwin/graphics/FlutterDarwinContextMetalImpeller.mm(42)] Using the Impeller rendering backend.
https://stackoverflow.com/questions/76968264/how-can-i-solve-using-the-impeller-rendering-backend-error

## android 调试信息
./gradlew assembleDebug --stacktrace

keytool -printcert -jarfile *.apk 在apk目录下，查看签名

### INSTALL_FAILED_UPDATE_INCOMPATIBLE: Package signatures do not match the previously installed version; ignoring
adb uninstall com.elephantpal

### PlatformException(network_error, com.google.android.gms.common.api.ApiException: 7: , null, null)
签名（.keystore）、网络翻墙问题
https://stackoverflow.com/questions/67958664/flutter-24658-platformexceptionnetwork-error-com-google-android-gms-common

https://stackoverflow.com/questions/55583381/what-does-apiexpception-7-mean-when-using-google-sign-in-through-firebase

### 12500
没gogole三件套

## shorebird
存放：  /Users/edy/Library/Application Support/shorebird/credentials.json.
指定flutter版本 shorebird release android --flutter-version=3.16.9

<!-- 用于查看当前 shorebird 状态-->
```shell
shorebird doctor
```

### pod

```shell
pod repo update
```



### 打包
--flutter-version=3.16.9  指定flutter版本
正式
// development 

```shell
--flavor production
```
```shell
shorebird release android --artifact apk -- --dart-define=env=production
```

### 补丁
 --release-version 1.0.0+1 
正式
```shell
shorebird patch android -- --dart-define=env=production
```

--staging 暂存，先不立即发布

### IOS

**ios配置：**
如果需要区分环境，如fat，pro，则需要在 xcode 创建相应名称。
在 Project => Info -> Configurations 创建相应后缀，如debug-fat, debug-pro 这样。
详情可看 https://medium.com/@animeshjain/build-flavors-in-flutter-android-and-ios-with-different-firebase-projects-per-flavor-27c5c5dac10b

ios打包运行以下命令，完毕后，在xcode的 window -> organizer 查看包
```shell
shorebird release ios --flavor fat
```

正式环境
```shell
shorebird release ios --flavor pro
```

```shell
shorebird release ios -- --dart-define=ENV=production

shorebird patch ios --debug
```

## 清缓存
flutter clean
flutter pub cache clean


## 安装Firebase相关软件
https://firebase.google.com/docs/flutter/setup?hl=zh-cn&platform=ios


### 调试
```shell
adb shell setprop debug.firebase.analytics.app com.elephantpal
```
## Flutter SDK问题
在环境配置sdk版本路径后， idea vscode 如果出现sdk引起的问题，多半是编译器问题，尝试删掉旧版sdk



## 运行build_apk.kts
https://github.com/kscripting/kscript?tab=readme-ov-file#installation

kotlinc -script  build_apk.kts

## auto_router
不使用深度链接
```
 <meta-data android:name="flutter_deeplinking_enabled" android:value="true" /> // 不包含
 <key>FlutterDeepLinkingEnabled</key> <false/> // 设置为false
```

## h5优化

```shell
flutter build web  --web-renderer html --pwa-strategy none 
```
```--base-href "/"``` 视项目部署路径变化，默认是"/"

```shell
cp -r ./build/app/intermediates/flutter/proRelease/flutter_assets/fonts ./build/web/assets &&
cp -r ./build/app/intermediates/flutter/proRelease/flutter_assets/packages/cupertino_icons ./build/web/assets/packages &&
cp -r ./build/app/intermediates/flutter/proRelease/flutter_assets/packages/getwidget ./build/web/assets/packages &&
flutter pub run flutter_web_optimizer optimize --asset-base http://gsp-dc-mall-fat.newnary.cn/ && rm -rf ./build/web/canvaskit && rm ./build/web/assets/NOTICES
```