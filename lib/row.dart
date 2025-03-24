/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-24 23:26:26
 * @LastEditTime: 2025-03-24 23:32:09
 * @FilePath: /flutter_learn/lib/row.dart
 * @Description: Flutter Row 水平布局组件
 */
import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row 水平布局组件'),
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, // 主轴两端对齐
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴均匀分布
        // mainAxisAlignment: MainAxisAlignment.center, // 主轴居中对齐
        // mainAxisAlignment: MainAxisAlignment.end, // 主轴尾部对齐
        // mainAxisAlignment: MainAxisAlignment.start, // 主轴头部对齐
        // mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴两端对齐，中间均匀分布
        crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴对齐方式
        // crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴拉伸
        // crossAxisAlignment: CrossAxisAlignment.end, // 交叉轴对齐方式
        // mainAxisSize: MainAxisSize.min, // 主轴最小宽度

        children: [
          const Icon(Icons.home),
          const Icon(Icons.search),
          const Icon(Icons.settings),
          const Icon(Icons.person),
          const Icon(Icons.phone),
          const Icon(Icons.email),
          const Icon(Icons.message),
          const Icon(Icons.notifications),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('Container'),
            ),
          ),
        ],
      ),
    );
  }
}
