#!/bin/bash
source funs.sh

saveExport PUB_HOSTED_URL https://pub.flutter-io.cn
echo "Dart pub host changed."

saveExport FLUTTER_STORAGE_BASE_URL https://storage.flutter-io.cn
echo "Flutter stoage base url changed."
