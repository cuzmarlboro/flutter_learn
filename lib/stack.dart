/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 00:32:55
 * @LastEditTime: 2025-03-25 01:21:46
 * @FilePath: /flutter_learn/lib/stack.dart
 * @Description: 层叠布局（Stack、Align、Positioned）
 */

// 1. Stack 表示堆的意思，我们可以用 Stack 或者Stack结合Align或者Stack结合 Positiond来实现页面的定位布局
// 2. Align 组件可以调整子组件的位置 , Stack 组件中结合 Align 组件也可以控制每个子元素的显示位置
// 3. Alignment Widget 会以矩形的中心点作为坐标原点，即 Alignment(0, 0) 。 x 、 y 的值从-1到1分别代表矩形左边到右边的距离和顶部到底边的距离，因此2个水平（或垂直）单位则等于矩形的宽
// （或高），如 Alignment(-1.0, -1.0) 代表矩形的左侧顶点，而 Alignment(1.0, 1.0) 代表右侧底部终点，而 Alignment(1.0, -1.0) 则正是右侧顶点，即 Alignment.topRight 。为了使用方便，矩
// 形的原点、四个顶点，以及四条边的终点在 Alignment 类中都已经定义为了静态常量。
// Alignment 可以通过其坐标转换公式将其坐标转为子元素的具体偏移坐标：(Alignment.x*childWidth/2+childWidth/2, Alignment.y*childHeight/2+childHeight/2
// 其中 childWidth 为子元素的宽度， childHeight 为子元素高度。
// 现在我们再看看上面的示例，我们将 Alignment(2, 0) 带入上面公式， (2*120/2+120/2,0*120/2+120/2) ，可得 FlutterLogo 的实际偏移坐标正是（180,60）。
// 4. Stack 组件中结合 Positioned 组件也可以具体控制每个子元素的显示位置
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕的宽度和高度
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('层叠布局（Stack、Align、Positioned）'),
      ),
      // body: _Stack(),
      // body: _Align(),
      // body: _Alignment(),
      // body: _AlignStack(),
      // body: _PositionedStack(width, height),
      body: _FixedNavigationBar(width, height),
    );
  }

  _Stack() {
    return Stack(
      alignment: Alignment.topLeft, // 配置所有子元素的显示位置
      // 子元素叠加顺序（从下往上）
      children: <Widget>[
        Container(
          height: 400,
          width: 300,
          color: Colors.red,
        ),
        const Text('我是一个文本',
            style: TextStyle(fontSize: 40, color: Colors.white))
      ],
    );
  }

  _Align() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: 120,
          width: 120,
          color: Colors.blue.shade50,
          child: const Align(
            alignment: Alignment.topRight, // 配置所有子元素的显示位置
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ));
  }

  _Alignment() {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          height: 120,
          width: 120,
          color: Colors.blue.shade50,
          child: const Align(
            alignment: Alignment(0, 0),
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ));
  }

  // Align 结合 Stack组件
  _AlignStack() {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: const Stack(
        children: [
          Align(
            // alignment: Alignment(1, -1), 等价于 alignment: Alignment.topRight
            alignment: Alignment.topRight,
            child: Icon(Icons.home, size: 40, color: Colors.white),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.settings_applications,
                size: 30, color: Colors.white),
          )
        ],
      ),
    ));
  }

  // Positioned 结合 Stack组件
  _PositionedStack(width, height) {
    return Center(
        child: Container(
            height: height,
            width: width,
            color: Colors.red,
            child: const Stack(children: [
              Positioned(
                left: 50,
                top: 0,
                child: Icon(Icons.home, size: 40, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                left: 100,
                child: Icon(Icons.home, size: 40, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.home, size: 40, color: Colors.white),
              ),
            ])));
  }

  // Stack 结合 Positioned固定导航案例
  _FixedNavigationBar(width, height) {
    return Stack(children: [
      ListView(
        padding: const EdgeInsets.only(top: 40),
        children: const [
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
          ListTile(
            title: Text("这是一个标题 "),
          ),
        ],
      ),
      Positioned(
          top: 0,
          left: 0,
          height: 40,
          width: width,
          child: Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: const Text(
              "你好FLutter",
              style: TextStyle(color: Colors.white),
            ),
          ))
    ]);
  }
}
