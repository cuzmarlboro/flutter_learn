/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 16:48:47
 * @LastEditTime: 2025-03-25 17:09:36
 * @FilePath: /flutter_learn/lib/wrap.dart
 * @Description: Flutter Wrap
 */

// 1. Wrap 可以实现流布局，单行的 Wrap 跟 Row 表现几乎一致，单列的 Wrap 则跟 Column 表现几乎一致。
// 2. 但 Row 与 Column 都是单行单列的，Wrap 则突破了这个限制，mainAxis 上空间不足时，则向 crossAxis 上
// 去扩展显示。

// Wrap
// 1. direction：主轴的方向，默认水平
// 2. alignment：主轴方向的对齐方式
// 3. spacing：主轴方向的间距
// 4. textDirection：文本方向
// 5. verticalDirection：定义了 children 摆放顺序，默认是down
// 6. runAlignment：run 的对齐方式。run 可以理解为新的行或者列，如果是水平方向布局的话，run 可以理解为新的一行
// 7. runSpacing：run 的间距

import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      // body: _Wrap(),
      body: _SearchPage(),
    );
  }

  _Wrap() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        // direction: Axis.vertical,
        spacing: 5, // 主轴方向的间距
        runSpacing: 5, // run 的 间距
        // alignment: WrapAlignment.spaceAround, // 主轴方向的对齐方式
        // runAlignment: WrapAlignment.spaceBetween, // run 的对齐方式

        children: [
          _Btn("第1集"),
          _Btn("第2集"),
          _Btn("第3集"),
          _Btn("第4集"),
          _Btn("第5集"),
          _Btn("第6集"),
          _Btn("第7集"),
          _Btn("第8集"),
          _Btn("第9集"),
          _Btn("第10集"),
          _Btn("第11集"),
          _Btn("第12集"),
          _Btn("第13集"),
          _Btn("第14集"),
          _Btn("第15集"),
          _Btn("第16集"),
          _Btn("第17集"),
          _Btn("第18集"),
        ],
      ),
    );
  }

  // Wrap 组件搜索页面布局
  _SearchPage() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "热搜",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Divider(),
              ],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 12,
              children: [
                _Btn("女装"),
                _Btn("笔记本"),
                _Btn("玩具"),
                _Btn("文学"),
                _Btn("女装"),
                _Btn("时尚"),
                _Btn("女装"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "历史记录",
                  style: Theme.of(context).textTheme.headlineSmall,
                )
              ],
            ),
            const Divider(),
            const Column(
              children: [
                ListTile(
                  title: Text("女装"),
                ),
                Divider(),
                ListTile(
                  title: Text("时尚"),
                ),
                Divider(),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20),
              child: OutlinedButton.icon(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all(Colors.black38),
                ),
                icon: const Icon(Icons.delete),
                label: const Text("清空历史记录"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _Btn(text) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          const Color.fromARGB(255, 236, 233, 233),
        ),
        foregroundColor: WidgetStateProperty.all(Colors.black45),
      ),
      child: Text(text),
    );
  }
}
