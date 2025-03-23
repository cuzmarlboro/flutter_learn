/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-23 22:32:52
 * @LastEditTime: 2025-03-23 23:28:09
 * @FilePath: /flutter_learn/lib/07.dart
 * @Description: Flutte ICON图标 自带图标  和 自定义图标
 */
// 1. 内置图标通过 Icon 组件 Icons.xxx 直接使用
// 2. 自定义图标通过 IconData 组件使用，也就是通过字体图标的方式
// 3. 通过 iconfont.cn 下载图标代码然后解压，使用里面的 .ttf 和 .json 文件
import 'package:flutter/material.dart';
import 'font.dart';

class MyWidget07 extends StatefulWidget {
  const MyWidget07({super.key});

  @override
  State<MyWidget07> createState() => _MyWidget07State();
}

class _MyWidget07State extends State<MyWidget07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutte ICON图标 自带图标  和 自定义图标'),
      ),
      body: const Center(
          child: Column(
        children: [
          Icon(Icons.search, color: Colors.red, size: 40),
          SizedBox(height: 10),
          Icon(Icons.home),
          SizedBox(height: 10),
          Icon(Icons.category),
          SizedBox(height: 10),
          Icon(Icons.shop),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MyIcons.book, color: Colors.purple),
              Icon(MyIcons.wechat, color: Colors.green),
            ],
          ),
        ],
      )),
    );
  }
}
