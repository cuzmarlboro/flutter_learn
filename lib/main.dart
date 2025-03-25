import 'package:flutter/material.dart';
// import '04.dart';
// import '05.dart';
// import '06.dart';
// import '07.dart';
// import 'list.dart';
// import 'grid.dart';
// import 'padding.dart';
// import 'row.dart';
// import 'column.dart';
// import 'flex.dart';
// import 'stack.dart';
// import 'aspectRatio.dart';
// import 'card.dart';
// import 'button.dart';
// import 'wrap.dart';

// 页面
import 'pages/home.dart';
import 'pages/category.dart';
import 'pages/setting.dart';
import 'pages/message.dart';
import 'pages/my.dart';

import 'components/bottomNavigationBar.dart';
import 'components/drawer.dart';
import 'components/appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter'),
      // home: const MyWidget04(),
      // home: const MyWidget05(),
      // home: const MyWidget06(),
      // home: const MyWidget07(),
      // home: const ListWidget(),
      // home: const GridWidget(),
      // home: const PaddingWidget(),
      // home: const RowWidget(),
      // home: const ColumnWidget(),
      // home: const FlexWidget(),
      // home: const StackWidget(),
      // home: const AspectRatioWidget(),
      // home: const CardWidget(),
      // home: const ButtonWidget(),
      // home: const WrapWidget(),
      // home: const BottomNavigationBarWidget(),
      // home: const DrawerWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _currentIndex = 0;
  // final List<Widget> _pages = const [
  //   HomePage(),
  //   CategoryPage(),
  //   MessagePage(),
  //   SettingPage(),
  //   MyPage(),
  // ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: TabBarView(
        controller: _tabController,
        children: const [Text("热门"), Text("推荐"), Text("视频")],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      // drawer: const DrawerWidget(),
    );
  }
}
