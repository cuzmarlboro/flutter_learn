/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-24 23:38:37
 * @LastEditTime: 2025-03-25 00:30:33
 * @FilePath: /flutter_learn/lib/flex.dart
 * @Description: Flex 组件
 */

// 1. Flex 组件可以沿着水平或垂直方向排列子组件，如果你知道主轴方向，使用 Row 或 Column 会方便一些。
// 2. 因为 Row 和 Column 都继承自 Flex ，参数基本相同，所以能使用 Row 或 Column 的地方基本上都可以使用 Flex
// 3. Flex 本身功能是很强大的，它也可以和 Expanded 组件配合实现弹性布局

import 'package:flutter/material.dart';

class FlexWidget extends StatefulWidget {
  const FlexWidget({super.key});

  @override
  State<FlexWidget> createState() => _FlexWidgetState();
}

class _FlexWidgetState extends State<FlexWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex 布局组件'),
      ),
      // body: _FlexRowContainer(),
      // body: _FlexColumnContainer(),
      body: _FlexExpandedContainer(),
    );
  }

  // 水平弹性布局
  _FlexRowContainer() {
    return Flex(
      direction: Axis.horizontal, // 主轴方向
      children: [
        Expanded(flex: 2, child: _IconContainer(Icons.home, color: Colors.red)),
        Expanded(
          flex: 1,
          child: _IconContainer(Icons.search, color: Colors.orange),
        )
      ],
    );
  }

  // 垂直弹性布局
  _FlexColumnContainer() {
    return Flex(
      direction: Axis.vertical, // 主轴方向
      children: [
        Expanded(flex: 2, child: _IconContainer(Icons.home, color: Colors.red)),
        Expanded(
          flex: 1,
          child: _IconContainer(Icons.search, color: Colors.orange),
        )
      ],
    );
  }

  // 使用 Row 或Column 结合Expanded 实现弹性布局
  _FlexExpandedContainer() {
    return ListView(
      children: [
        Container(height: 100, width: double.infinity, color: Colors.black),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                            "https://www.itying.com/images/flutter/3.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.network(
                              "https://www.itying.com/images/flutter/4.png",
                              fit: BoxFit.cover),
                        )),
                  ],
                ),
              ),
            )
          ],
        )
      ],
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
