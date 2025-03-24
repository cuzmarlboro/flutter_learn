/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-24 23:13:58
 * @LastEditTime: 2025-03-24 23:24:52
 * @FilePath: /flutter_learn/lib/padding.dart
 * @Description: Flutter Padding组件
 */
// 1. 在html中常见的布局标签都有padding属性，但是 Flutter 中很多 Widget 是没有 padding 属性。这个时候我们可以用Padding组件处理容器与子元素之间的间距。
// 2. EdgeInsets 是 Flutter 中一个非常重要的类，用于设置元素的间距。
import 'package:flutter/material.dart';

class PaddingWidget extends StatefulWidget {
  const PaddingWidget({super.key});

  @override
  State<PaddingWidget> createState() => _PaddingWidgetState();
}

class _PaddingWidgetState extends State<PaddingWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding组件'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network('https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/6.png',
                fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
