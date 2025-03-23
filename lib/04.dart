/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-23 19:39:54
 * @LastEditTime: 2025-03-23 19:57:51
 * @FilePath: /flutter_learn/lib/04.dart
 * @Description: 04 Flutter目录结构介绍、入口、自定义Widget、Center组件、Text组件、MaterialApp组件、Scaffold组件
 */

// 1. 页面重新渲染的时候不会重新渲染 const 的组件
// 2. 父组件已经加了 const ，子组件就无需再加

import 'package:flutter/material.dart';

class MyWidget04 extends StatefulWidget {
  const MyWidget04({super.key});

  @override
  State<MyWidget04> createState() => _MyWidget04State();
}

// class _MyWidget04State extends State<MyWidget04> {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text("你好Flutter",
//           textDirection: TextDirection.rtl, // 文字方向
//           style: TextStyle(
//               // color: Colors.red,
//               color: Color.fromRGBO(244, 244, 123, 1),
//               fontSize: 80)),
//     );
//   }
// }

// 3. MaterialApp 组件是 Flutter 的入口组件，可以设置主题、路由、国际化等，所有组件都要用这个组件包裹
// 4. Scaffold 组件是 Flutter 的布局组件，可以设置标题、内容、底部导航等
class _MyWidget04State extends State<MyWidget04> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("你好Flutter")),
        body: const Center(
          child: Text("你好Flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.red,
                  // color: Color.fromRGBO(244, 244, 123, 1),
                  fontSize: 40)),
        ),
      ),
    );
  }
}
