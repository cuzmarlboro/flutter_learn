/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-23 23:35:20
 * @LastEditTime: 2025-03-24 23:01:41
 * @FilePath: /flutter_learn/lib/list.dart
 * @Description: 四种常用列表：垂直列表、垂直图文列表、水平列表、动态列表
 */

// 1. ListView 可以滚动里面的内容
// 2. ListTile 是列表项，可以包含标题、副标题、图标
// 3. SizedBox 是大小盒子，可以设置大小，不能设置 padding，Container 是容器，可以设置颜色、大小、边框、圆角等
// 4. 在 ListView 垂直列表中，Container 的 width 是自适应的，手动设置没有效果，水平列表中，Container 的 height 是自适应的
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('四种常用列表：垂直列表、垂直图文列表、水平列表、动态列表'),
      ),
      body: Center(
        // child: _verticalList(),
        // child: _verticalImageList(),
        // child: _verticalImageContentList(),
        // child: _horizontalList(),
        // child: _dynamicList(),
        child: _dynamicList2(),
      ),
    );
  }

  // 1. 垂直列表
  Widget _verticalList() {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.assignment, color: Colors.red),
          title: Text("全部订单"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment, color: Colors.green),
          title: Text("待付款"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.local_car_wash, color: Colors.orange),
          title: Text("待收货"),
        ),
        ListTile(
          leading: Icon(Icons.favorite, color: Colors.lightGreen),
          title: Text("我的收藏"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.people, color: Colors.black54),
          title: Text("在线客服"),
        ),
        Divider(),
      ],
    );
  }

  // 2. 垂直图文列表
  Widget _verticalImageList() {
    return ListView(
      children: [
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: const Text('华北黄淮高温雨今起强势登场'),
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/2.png"),
          title: const Text('保监局50天开32罚单 “断供”违规资金为房市降温'),
          subtitle: const Text("中国天气网讯 保监局50天开32罚单 “断供”违规资金为房市降温"),
        ),
        const Divider(),
        ListTile(
          title: const Text('华北黄淮高温雨今起强势登场'),
          subtitle: const Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          trailing:
              Image.network("https://www.itying.com/images/flutter/3.png"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/4.png"),
          title: const Text('普京现身俄海军节阅兵：乘艇检阅军舰'),
          subtitle: const Text("俄罗斯总统普京现身俄海军节阅兵：乘艇检阅军舰"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/5.png"),
          title: const Text('鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当'),
          subtitle: const Text("鸿星尔克捐1个亿帮助困难残疾群体 网友：企业有担当"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/6.png"),
          title: const Text('行业冥灯？老罗最好祈祷苹果的AR能成'),
          subtitle: const Text("行业冥灯？老罗最好祈祷苹果的AR能成"),
        ),
      ],
    );
  }

  // 3. 垂直图片内容列表
  Widget _verticalImageContentList() {
    return ListView(
      children: [
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          height: 44,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          height: 44,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          height: 44,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/3.png"),
      ],
    );
  }

  // 4. 水平列表
  Widget _horizontalList() {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal, // 水平滚动
        children: [
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                const Text('我是一个文本')
              ],
            ),
          ),
          Container(
            width: 180.0,
            color: Colors.blue,
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            width: 180.0,
            color: Colors.grey,
          ),
          Container(
            width: 180.0,
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  // 5. 动态列表（for循环实现动态列表）
  Widget _dynamicList() {
    List<Widget> list = [];
    for (int i = 0; i < 20; i++) {
      list.add(ListTile(title: Text('item $i')));
    }
    return ListView(
      children: list,
    );
  }

  // map 实现动态列表
  Widget _dynamicList2() {
    List list = [
      {'title': '标题1', 'image': 'https://www.itying.com/images/flutter/1.png'},
      {'title': '标题2', 'image': 'https://www.itying.com/images/flutter/2.png'},
      {'title': '标题3', 'image': 'https://www.itying.com/images/flutter/3.png'},
      {'title': '标题4', 'image': 'https://www.itying.com/images/flutter/4.png'},
      {'title': '标题5', 'image': 'https://www.itying.com/images/flutter/5.png'},
      {'title': '标题6', 'image': 'https://www.itying.com/images/flutter/6.png'},
    ];
    return ListView(
      children: list.map((item) {
        return ListTile(
          title: Text(item['title']),
          leading: Image.network(item['image']),
        );
      }).toList(), // 将 Iterable<Widget> 转换为具体的 List<Widget> 对象
    );
  }

  // 6. 动态列表（ListView.builder实现动态列表）
  Widget _dynamicList3() {
    List list = [
      {'title': '标题1', 'image': 'https://www.itying.com/images/flutter/1.png'},
      {'title': '标题2', 'image': 'https://www.itying.com/images/flutter/2.png'},
      {'title': '标题3', 'image': 'https://www.itying.com/images/flutter/3.png'},
      {'title': '标题4', 'image': 'https://www.itying.com/images/flutter/4.png'},
      {'title': '标题5', 'image': 'https://www.itying.com/images/flutter/5.png'},
      {'title': '标题6', 'image': 'https://www.itying.com/images/flutter/6.png'},
    ];
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]['title']),
          leading: Image.network(list[index]['image']),
          trailing: const Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}
