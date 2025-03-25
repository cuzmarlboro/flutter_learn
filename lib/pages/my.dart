/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 20:06:11
 * @LastEditTime: 2025-03-25 20:06:25
 * @FilePath: /flutter_learn/lib/pages/my.dart
 * @Description: 
 */
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('我的'),
    );
  }
}
