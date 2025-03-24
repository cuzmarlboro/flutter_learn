/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-24 22:07:31
 * @LastEditTime: 2025-03-24 23:11:12
 * @FilePath: /flutter_learn/lib/grid.dart
 * @Description: Flutter GridView网格布局组件
 */

// 1、可以通过GridView.count 实现网格布局
// 2、可以通过GridView.extent 实现网格布局
// 3、通过GridView.builder实现动态网格布局
// 4. 在 Flutter/Dart 中，map() 方法返回的是一个 Iterable 对象，而不是 List。虽然 Iterable 也可以用来遍历数据，但是在某些情况下，特别是在 Flutter 的 Widget 树中，我们需要一个具体的 List 对象。
// map() 方法返回的是 Iterable<Widget>，这是一个惰性求值的集合
// GridView.count 的 children 参数需要的是 List<Widget> 类型
// 通过调用 toList()，我们将 Iterable 转换为具体的 List 对象
// 如果不使用 toList()，代码会报错，因为类型不匹配。这就像是在说：
// Iterable 是一个"可以遍历的集合"的概念
// List 是一个具体的、可以立即访问所有元素的集合
// 所以 toList() 的作用就是将这个"可以遍历的集合"转换成具体的列表，使其能够被 GridView 正确使用

import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      // body: _gridCountView(),
      // body: _gridExtentView(),
      // body: _gridBuilderView1(),
      // body: _gridBuilderView2(),
      // body: _gridBuilderView3(),
      body: _gridBuilderView4(),
    );
  }

  // 通过GridView.count实现网格布局
  Widget _gridCountView() {
    return GridView.count(
      crossAxisCount: 3, // 主轴方向的子元素个数
      childAspectRatio: 1, // 子元素宽高比
      children: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }

  // 通过GridView.extent实现网格布局
  Widget _gridExtentView() {
    return GridView.extent(
      maxCrossAxisExtent: 50, // 子元素在主轴方向的最大宽度
      childAspectRatio: 1, // 子元素宽高比
      children: const <Widget>[
        Icon(Icons.home),
        Icon(Icons.ac_unit),
        Icon(Icons.search),
        Icon(Icons.settings),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.circle),
      ],
    );
  }

  // 动态 GridView for循环
  Widget _gridBuilderView1() {
    List<Widget> list = [];
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第$i条数据',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        // height: 400, //设置高度没有反应
      ));
    }
    return GridView.count(
      crossAxisSpacing: 10, //水平子 Widget 之间间距
      mainAxisSpacing: 10, //垂直子 Widget 之间间距
      padding: const EdgeInsets.all(10), // 内边距
      crossAxisCount: 2, //一行的 Widget 数量
      childAspectRatio: 1, //宽度和高度的比例
      children: list,
    );
  }

  // 动态 GridView map
  Widget _gridBuilderView2() {
    List listData = [
      {'title': '标题1', 'image': 'https://www.itying.com/images/flutter/1.png'},
      {'title': '标题2', 'image': 'https://www.itying.com/images/flutter/2.png'},
      {'title': '标题3', 'image': 'https://www.itying.com/images/flutter/3.png'},
      {'title': '标题4', 'image': 'https://www.itying.com/images/flutter/4.png'},
      {'title': '标题5', 'image': 'https://www.itying.com/images/flutter/5.png'},
      {'title': '标题6', 'image': 'https://www.itying.com/images/flutter/6.png'},
    ];

    List<Widget> tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
        child: Column(
          children: <Widget>[
            Image.network(value['image']),
            const SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      );
    }).toList(); // 将 Iterable<Widget> 转换为具体的 List<Widget> 对象

    return GridView.count(
      crossAxisSpacing: 10, //水平子 Widget 之间间距
      mainAxisSpacing: 10, //垂直子 Widget 之间间距
      padding: const EdgeInsets.all(10), // 内边距
      crossAxisCount: 2, //一行的 Widget 数量
      childAspectRatio: 1, //宽度和高度的比例
      children: tempList,
    );
  }

  // 动态 GridView builder  SliverGridDelegateWithFixedCrossAxisCount 固定列数
  Widget _gridBuilderView3() {
    List listData = [
      {'title': '标题1', 'image': 'https://www.itying.com/images/flutter/1.png'},
      {'title': '标题2', 'image': 'https://www.itying.com/images/flutter/2.png'},
      {'title': '标题3', 'image': 'https://www.itying.com/images/flutter/3.png'},
      {'title': '标题4', 'image': 'https://www.itying.com/images/flutter/4.png'},
      {'title': '标题5', 'image': 'https://www.itying.com/images/flutter/5.png'},
      {'title': '标题6', 'image': 'https://www.itying.com/images/flutter/6.png'},
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 一行的 Widget 数量
        childAspectRatio: 1, // 宽度和高度的比例
        crossAxisSpacing: 10, //水平子 Widget 之间间距
        mainAxisSpacing: 10, //垂直子 Widget 之间间距
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
          child: Column(
            children: <Widget>[
              Image.network(listData[index]['image']),
              const SizedBox(height: 12),
              Text(
                listData[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        );
      },
    );
  }

  // 动态 GridView builder  SliverGridDelegateWithMaxCrossAxisExtent 最大列数
  Widget _gridBuilderView4() {
    List listData = [
      {'title': '标题1', 'image': 'https://www.itying.com/images/flutter/1.png'},
      {'title': '标题2', 'image': 'https://www.itying.com/images/flutter/2.png'},
      {'title': '标题3', 'image': 'https://www.itying.com/images/flutter/3.png'},
      {'title': '标题4', 'image': 'https://www.itying.com/images/flutter/4.png'},
      {'title': '标题5', 'image': 'https://www.itying.com/images/flutter/5.png'},
      {'title': '标题6', 'image': 'https://www.itying.com/images/flutter/6.png'},
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 100, // 子元素在主轴方向的最大宽度
        childAspectRatio: 1, // 宽度和高度的比例
        crossAxisSpacing: 10, //水平子 Widget 之间间距
        mainAxisSpacing: 10, //垂直子 Widget 之间间距
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(233, 233, 233, 0.9), width: 1)),
          child: Image.network(
            listData[index]['image'],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
