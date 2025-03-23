/// 自定义字体图标工具类
library font; // library 关键字，表示这是一个库

import 'package:flutter/material.dart';

// 1. 0xf00a1 是图标代码，就是 iconfont.json 文件中的 unicode，0x 表示十六进制
// 2. fontFamily 是字体名称，就是 pubspec.yaml 文件中的 family 名称
// 3. matchTextDirection 表示是否匹配文本方向

class MyIcons {
// book 图标
  static const IconData book =
      IconData(0xf00a1, fontFamily: 'myIcon', matchTextDirection: true);
// 微信图标
  static const IconData wechat =
      IconData(0xe607, fontFamily: 'myIcon', matchTextDirection: true);
}
