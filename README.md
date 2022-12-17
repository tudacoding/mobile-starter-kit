# mobile_starter_kit

A Flutter project created by ThinhNguyen.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Note

Install dependencies in pubspec.yaml

```
flutter pub add package_name
flutter pub add --dev package_name
```

Run mobx codegen build 1 lần

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

Run mobx codegen build mỗi khi thay đổi

```
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

Sử dụng freezed để thêm vào model

- Tất cả các thuộc tính lưu trữ cái chúng ta cần(và thiết lập chúng là final).
- Phương thức toString().
- Phương thức ==.
- Biến hashCode.
- Phương thức copyWith().
- Phương thức toJson().

Cài thêm extension JSON to Dart
Sử dụng JSON to Dart From Clipboard to Class Generation -> giúp chuyển json tự động thành class
Và khi class được tạo ra watch freezed đang chạy nó sẽ tự động render ra code freezed
