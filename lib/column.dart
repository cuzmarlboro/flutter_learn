/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-24 23:33:28
 * @LastEditTime: 2025-03-24 23:36:30
 * @FilePath: /flutter_learn/lib/column.dart
 * @Description: Flutter Column 垂直布局组件
 */
import 'package:flutter/material.dart';

// 1. double.infinity 和 double.maxFinite 可以让当前元素的 width 或者 height 达到父元素的尺寸

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column 垂直布局组件'),
      ),
      body: Container(
        height: double.infinity, // 高度为无穷大
        width: double.infinity, // 宽度为无穷大
        color: Colors.black26, // 背景颜色
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴居中
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴均匀分布
          children: [
            _IconContainer(Icons.home, color: Colors.red),
            _IconContainer(Icons.search, color: Colors.blue),
            _IconContainer(Icons.send, color: Colors.orange),
          ],
        ),
      ),
    );
  }

  _IconContainer(IconData icon, {Color color = Colors.black}) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Icon(icon),
    );
  }
}
