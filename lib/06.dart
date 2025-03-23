/*
 * @LastEditors: hezeying@xdf.cn
 * @Date: 2025-03-23 20:11:17
 * @LastEditTime: 2025-03-23 22:31:10
 * @FilePath: /flutter_learn/lib/06.dart
 * @Description: Flutter 图片组件Image 、本地图片、远程图片、图片剪切
 */
// 1. 图片组件一般发在 Container 容器里面，方便控制
// 2. Image.asset 本地图片 Image.network 远程图片
// 3. BoxFit.cover 图片剪切，Boxfit.cover 充满父容器，Boxfit.fitWidth 图片宽度适应容器宽度，Boxfit.fitHeight 图片高度适应容器高度
// 4. 圆形图片主要是通过 Container 的 decoration 属性来实现，相当于 html div 中的 background-image
// 5. 基本上，CircleAvatar 不提供设置边框的属性。但是，可以将其包裹在具有更大半径和不同背景颜色的不同 CircleAvatar 中，以创建类似于边框的内容。
import 'package:flutter/material.dart';

class MyWidget06 extends StatefulWidget {
  const MyWidget06({super.key});

  @override
  State<MyWidget06> createState() => _MyWidget06State();
}

class _MyWidget06State extends State<MyWidget06> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('图片组件Image 、本地图片、远程图片、图片剪切'),
      ),
      body: Center(
        child: Column(
          children: [
            _Image(),
            const SizedBox(height: 20),
            _CircleImage1(),
            const SizedBox(height: 20),
            _CircleImage2(),
            const SizedBox(height: 20),
            _CircleImage3(),
          ],
        ),
      ),
    );
  }

  /// 图片组件
  Widget _Image() {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(107, 161, 222, 161)),
      width: 100,
      height: 100,
      // child: Image.network(
      //   "https://www.itying.com/themes/itying/images/ionic4.png",
      //   // fit: BoxFit.cover,
      //   // alignment: Alignment.centerLeft, // 图片对齐方式
      //   // scale: 2, // 图片缩放
      //   repeat: ImageRepeat.repeat, // 图片重复
      // ),
      child: Image.asset('images/summer.png', fit: BoxFit.cover),
    );
  }

  /// 圆形图片 方式1
  Container _CircleImage1() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), // 圆形
          image: const DecorationImage(
              image: AssetImage('images/summer.png'), fit: BoxFit.cover)),
    );
  }

  /// 圆形图片 方式2
  ClipOval _CircleImage2() {
    return ClipOval(
      child: Image.asset(
        "images/summer.png",
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }

  /// 圆形图片 方式3
  CircleAvatar _CircleImage3() {
    return const CircleAvatar(
      radius: 50,
      // backgroundImage: AssetImage("images/summer.png"),
      backgroundColor: Colors.red,
      child: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage("images/summer.png"),
      ),
    );
  }
}
