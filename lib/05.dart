/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-23 20:11:17
 * @LastEditTime: 2025-03-23 22:32:42
 * @FilePath: /flutter_learn/lib/05.dart
 * @Description: Flutter Container组件、Text组件详解
 */
import 'package:flutter/material.dart';

class MyWidget05 extends StatefulWidget {
  const MyWidget05({super.key});

  @override
  State<MyWidget05> createState() => _MyWidget05State();
}

// 1. Container 组件有点像HTML的div，可以设置宽高、内外间距
// 2. BoxDecoration 是装饰器， 可以设置颜色、圆角、阴影、内外间距
// 3. EdgeInsets 是间距， 可以设置上下左右间距
class _MyWidget05State extends State<MyWidget05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container组件、Text组件详解'),
      ),
      body: Center(
        child: Container(
          // alignment: Alignment.center, // 居中
          height: 200,
          width: 200,
          // 外部补白
          margin: const EdgeInsets.all(60.0),
          // 内部补白
          padding: const EdgeInsets.all(30.0),
          // 变换
          // transform: Matrix4.rotationZ(.1),
          // 装饰器
          decoration: BoxDecoration(
            // 容器的背景颜色
            color: Colors.yellow,
            // 边框
            border: Border.all(
              color: const Color.fromARGB(255, 59, 46, 45),
              width: 2, // 边框宽度
            ),
            // 圆角
            borderRadius: const BorderRadius.all(
              Radius.circular(10), // 圆角
            ),
            // 渐变
            gradient: const LinearGradient(
              colors: [Colors.red, Colors.orange],
            ),
            // 阴影
            boxShadow: const [
              BoxShadow(
                color: Colors.blue,
                offset: Offset(2.0, 2.0),
                blurRadius: 10.0,
              )
            ],
          ),
          child: const Text(
            "各位同学大家好我是主讲老师大地，各位同学大家好我是主讲老师",
            // 文字对齐方式
            textAlign: TextAlign.left,
            // 文字溢出方式
            // overflow: TextOverflow.ellipsis,
            overflow: TextOverflow.fade,
            // 最大行数
            maxLines: 2,
            // 文字样式
            style: TextStyle(
                fontSize: 20,
                color: Colors.black, // 文字颜色
                fontWeight: FontWeight.w800, // 粗体
                fontStyle: FontStyle.italic, // 斜体
                decoration: TextDecoration.lineThrough, // 文字装饰
                decorationColor: Colors.white, // 文字装饰颜色
                decorationStyle: TextDecorationStyle.dashed, // 文字装饰样式
                letterSpacing: 5.0, // 字间距
                wordSpacing: 10.0, // 词间距
                height: 2),
          ),
        ),
      ),
    );
  }
}
