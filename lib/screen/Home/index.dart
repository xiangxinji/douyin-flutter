import 'package:douyin/widgets/appBar/main.dart';
import 'package:douyin/widgets/video-oprations/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widgets/video-info/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;

    return Container(
      width: dw,
      height: dh,
      color: Colors.grey,
      child: Stack(
        children: [
          Positioned(
              child: FractionallySizedBox(
            child: Image.asset(
              'assets/images/video1.jpg',
              fit: BoxFit.scaleDown,
            ),
            widthFactor: 100,
            heightFactor: 100,
          )),
          Positioned(child: DyAppBar(), top: 0),
          Positioned(
              bottom: 10,
              left: 10,
              child: VideoInfo(
                author: '港漂的小石头',
                title: '在香港找一个地道内地口味的烧烤有多难，他们家吃过一次就真的爱上了',
                tags: const [
                  '香港美食',
                  '香港烧烤',
                  '香港旅游攻略',
                  '跟着抖音来探店',
                  '考验官',
                ],
              )),
          Positioned(
            child: VideoOprations(),
            right: 0,
            bottom: 0,
          )
        ],
      ),
    );
  }
}
