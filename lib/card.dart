/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-25 11:09:53
 * @LastEditTime: 2025-03-25 11:45:47
 * @FilePath: /flutter_learn/lib/card.dart
 * @Description: Flutter Card
 */
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      // body: _contactCardList(),
      body: _imageCardList(),
    );
  }

  // 通讯录卡片列表
  Widget _contactCardList() {
    return ListView(
      children: const [
        Card(
          // 阴影
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          // 阴影深度
          elevation: 10,
          // 外边距
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：1213214142"),
              ),
              ListTile(
                title: Text("地址：北京市海淀区"),
              )
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          elevation: 20,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28)),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text("电话：1213214142"),
              ),
              ListTile(title: Text("地址：北京市海淀区"))
            ],
          ),
        ),
      ],
    );
  }

  // 图文卡片列表
  Widget _imageCardList() {
    return ListView(
      children: [
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                      "https://www.itying.com/images/flutter/2.png",
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60),
                ),
                title: const Text("xxxx"),
                subtitle: const Text("xxxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/3.png",
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                // CircleAvatar 圆形头像
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png')),
                title: Text("xxxxxxxx"),
                subtitle: Text("xxxxxxxxxx"),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// TODO: :ClipRRect 和 ClipOval 的区别?