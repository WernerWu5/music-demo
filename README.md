
## 运行环境

### step1
生成文件等
```shell
dart run build_runner watch
```

### step2 
测试环境
```
flutter run --dart-define=ENV=fat
```
或

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
