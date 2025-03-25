/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 10:17:18
 * @LastEditTime: 2025-03-25 11:08:43
 * @FilePath: /flutter_learn/lib/aspectRatio.dart
 * @Description: AspectRatio
 */

// 1. AspectRatio 的作用是根据设置调整子元素 child 的宽高比
// 2. AspectRatio 首先会在布局限制条件允许的范围内尽可能的扩展，widget 的高度是由宽度和比率决定的，类似于 BoxFit 中的 contain，按照固定比率去尽量占满区域。
// 3. 如果在满足所有限制条件过后无法找到一个可行的尺寸，AspectRatio 最终将会去优先适应布局限制条件，而忽略所设置的比率。

import 'package:flutter/material.dart';

class AspectRatioWidget extends StatefulWidget {
  const AspectRatioWidget({super.key});

  @override
  State<AspectRatioWidget> createState() => _AspectRatioWidgetState();
}

class _AspectRatioWidgetState extends State<AspectRatioWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AspectRatio"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: AspectRatio(
          aspectRatio: 3 / 1,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
