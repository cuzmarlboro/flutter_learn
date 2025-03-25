/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 17:22:46
 * @LastEditTime: 2025-03-25 17:43:44
 * @FilePath: /flutter_learn/lib/bottomNavigationBar.dart
 * @Description: BottomNavigationBar
 */

// BottomNavigationBar 是 Scaffold 组件的一个参数，主要用于实现底部导航栏
// 1. items：List<BottomNavigationBarItem> 底部导航条按钮集合
// 2. currentIndex：<int> 当前选中的索引
// 3. onTap：<Function(int)> 选中变化回调函数
// 4. type：<BottomNavigationBarType> 底部导航栏的类型，有 fixed 和 shifting 两种，fixed：固定底部导航栏，shifting：可变底部导航栏
// 5. iconSize：<double> 图标大小
// 6. fixedColor：<Color> 选中颜色

// FloatingActionButton 简称 FAB ,可以实现浮动按钮，也可以实现类似闲鱼app的底部凸起导航
// 1. child：<Widget> 子组件，一般为 Icon，不推荐使用文字
// 2. onPressed：<Function()> 点击回调函数
// 3. tooltip：<String> FAB 被长按时显示，也是无障碍功能
// 4. shape：<ShapeBorder> 形状
// 5. elevation：<double> 未点击的时候的阴影
// 6. hignlightElevation<Color> 点击时阴影值，默认12
// 7. backgroundColor：<Color> 背景颜色

import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0; // 当前选中的索引

  final List<Map<String, dynamic>> _pages = [
    {
      'title': '首页',
      'icon': Icons.home,
    },
    {
      'title': '分类',
      'icon': Icons.category,
    },
    {
      'title': '消息',
      'icon': Icons.message,
    },
    {
      'title': '设置',
      'icon': Icons.settings,
    },
    {
      'title': '我的',
      'icon': Icons.person,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: Text('${_pages[_currentIndex]['title']}'),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      // 固定底部导航栏， 如果底部有4个或者4个以上的菜单的时候就需要配置这个参数
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: _pages.map(
        (item) {
          return BottomNavigationBarItem(
            icon: Icon(item['icon']),
            label: item['title'],
          );
        },
      ).toList(),
    );
  }

  _floatingActionButton() {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(top: 4),
      child: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
        onPressed: () {
          setState(() {
            _currentIndex = 2;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
