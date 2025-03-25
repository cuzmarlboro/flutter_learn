/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 20:43:26
 * @LastEditTime: 2025-03-25 21:03:40
 * @FilePath: /flutter_learn/lib/components/appBar.dart
 * @Description: AppBar组件
 */

// AppBar
// 1. leading 在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮
// 2. title 标题
// 3. actions 通常使用 IconButton 来表示，可以放按钮组
// 4. centerTitle 是否居中显示标题
// 5. backgroundColor 背景颜色
// 6. bottom 通常放tabBar，标题下面显示一个 Tab 导航栏
// 7. iconTheme 图标样式

// TabBar
// 1. tabs 显示的标签内容，一般使用Tab对象，也可以是其他的Widget
// 2. controller TabController 对象
// 3. isScrollable 是否可以滚动
// 4. indicatorColor 指示器颜色
// 5. indicatorWeight 指示器宽度
// 6. indicatorPadding 指示器内边距
// 7. indicator 指示器
// 8. indicatorSize 指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽，TabBarIndicatorSize.tab 跟每个 tab 等宽
// 9. labelColor 选中标签颜色
// 10. labelStyle 选中label的Style
// 11. unselectedLabelColor 未选中的标签颜色
// 12. unselectedLabelStyle 未选中的标签样式
// 13. labelPadding 每个label的padding值

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  // final TabController tabController;
  // const AppBarWidget({super.key, required this.tabController});

  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: const Text('FlutterDemo'),
      // bottom: TabBar(
      //   controller: tabController,
      //   tabs: const [
      //     Tab(child: Text("热门")),
      //     Tab(child: Text("推荐")),
      //     Tab(child: Text("视频"))
      //   ],
      // ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
