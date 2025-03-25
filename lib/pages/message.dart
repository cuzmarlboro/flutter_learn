/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 20:05:45
 * @LastEditTime: 2025-03-25 20:06:03
 * @FilePath: /flutter_learn/lib/pages/message.dart
 * @Description: 消息页面
 */
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('消息'),
    );
  }
}
