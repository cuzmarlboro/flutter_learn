/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 11:46:22
 * @LastEditTime: 2025-03-25 16:47:44
 * @FilePath: /flutter_learn/lib/button.dart
 * @Description: Flutter Button
 */

// Button
// 1. onPressed：必填参数，按下按钮时触发的回调，接收一个方法，传 null 表示按钮禁用，会显示禁用相关样式
// 2. child：子组件
// 3. style：通过 ButtonStyle 装饰

// ButtonStyle
// 1. foregroundColor：文本颜色
// 2. backgroundColor：背景色
// 3. shadowColor：阴影色
// 4. elevation：阴影的范围，值越大阴影范围越大
// 5. padding：内边距
// 6. shape：形状
// 7. side：边框

// ElevatedButton：即"凸起"按钮，它默认带有阴影和灰色背景。按下后，阴影会变大
// TextButton：即"文本"按钮，它默认没有背景不带阴影，只有文字，按下后有阴影
// OutlinedButton：即"轮廓"按钮，它默认带有边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影
// IconButton：即"图标"按钮，它默认没有背景不带阴影，只有图标，按下后有阴影

import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
      ),
      body: Center(
        // child: _elevatedButton(),
        // child: _textButton(),
        // child: _outlinedButton(),
        // child: _iconButton(),
        // child: _iconAndTextButton(),
        // child: _buttonSize(),
        // child: _buttonAdaptive(),
        // child: _buttonRadius(),
        // child: _buttonCircle(),
        child: _outlinedButtonBorder(),
      ),
    );
  }

  // ElevatedButton
  Widget _elevatedButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('ElevatedButton'),
    );
  }

  // TextButton
  Widget _textButton() {
    return TextButton(
      onPressed: () {},
      child: const Text('TextButton'),
    );
  }

  // OutlinedButton
  Widget _outlinedButton() {
    return OutlinedButton(
      onPressed: () {},
      child: const Text('OutlinedButton'),
    );
  }

  // IconButton
  Widget _iconButton() {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.thumb_up),
    );
  }

  // 带图标和文字的按钮
  Widget _iconAndTextButton() {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text("发送"),
          onPressed: () {},
        ),
        TextButton.icon(
          icon: const Icon(Icons.info),
          label: const Text("详情"),
          onPressed: () {},
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text("添加"),
          onPressed: () {},
        ),
      ],
    );
  }

  // 通过 SizedBox 修改按钮大小
  Widget _buttonSize() {
    return SizedBox(
      height: 80,
      width: 200,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('按钮宽度修改'),
      ),
    );
  }

  // 自适应按钮
  Widget _buttonAdaptive() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 60,
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('自适应按钮'),
              onPressed: () {
                print("自适应按钮");
              },
            ),
          ),
        )
      ],
    );
  }

  // 圆角按钮
  Widget _buttonRadius() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.blue),
        foregroundColor: WidgetStateProperty.all(Colors.white),
        elevation: WidgetStateProperty.all(20),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )),
      ),
      onPressed: () {
        print("圆角按钮");
      },
      child: const Text('圆角'),
    );
  }

  // 圆形按钮
  Widget _buttonCircle() {
    return SizedBox(
      height: 100,
      // width: 100,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(20),
          shape: WidgetStateProperty.all(
            const CircleBorder(side: BorderSide(color: Colors.blue)),
          ),
        ),
        child: const Text('圆形'),
      ),
    );
  }

  // 修改 OutlinedButton 边框
  Widget _outlinedButtonBorder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(20),
            height: 50,
            child: OutlinedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.black),
                side: WidgetStateProperty.all(
                  const BorderSide(width: 1, color: Colors.red),
                ),
              ),
              onPressed: () {},
              child: const Text("注册 配置边框"),
            ),
          ),
        )
      ],
    );
  }
}
