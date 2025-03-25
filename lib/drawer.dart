/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 17:46:49
 * @LastEditTime: 2025-03-25 17:57:49
 * @FilePath: /flutter_learn/lib/drawer.dart
 * @Description: Drawer
 */

// Drawer
// 1. 在 Scaffold 组件里面传入 drawer 参数可以定义左侧边栏，传入 endDrawer 可以定义右侧边栏。
// 2. 侧边栏默认是隐藏的，我们可以通过手指滑动显示侧边栏，也可以通过点击按钮显示侧边栏。

// DrawerHeader
// 1. decoration：<BoxDecoration> 背景装饰
// 2. padding：<EdgeInsetsGeometry> 内边距
// 3. margin：<EdgeInsetsGeometry> 外边距
// 4. child：<Widget> 子组件

// UserAccountsDrawerHeader
// 1. decoration：<BoxDecoration> 背景装饰
// 2. accountName 账户名称
// 3. accountEmail 账户邮箱
// 4. currentAccountPicture 当前用户头像
// 5. otherAccountsPictures 其他用户头像
// 6. margin 外边距

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // _drawerHeader(),
            _userAccountsDrawerHeader(),
            const ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(child: Icon(Icons.people)),
            ),
            const Divider(),
            const ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(child: Icon(Icons.settings)),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text('右侧边栏'),
      ),
    );
  }

  _drawerHeader() {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Colors.yellow,
        image: DecorationImage(
          image: NetworkImage(
            "https://www.itying.com/images/flutter/2.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: const <Widget>[Text('我是一个头部')],
      ),
    );
  }

  _userAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: const Text("大地老师"),
      accountEmail: const Text("dadi@itying.com"),
      currentAccountPicture: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://www.itying.com/images/flutter/3.png",
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.yellow,
        image: DecorationImage(
          image: NetworkImage(
            "https://www.itying.com/images/flutter/2.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      otherAccountsPictures: <Widget>[
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Image.network("https://www.itying.com/images/flutter/6.png")
      ],
    );
  }
}
