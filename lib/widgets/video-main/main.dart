import 'package:douyin/widgets/video/main.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../appBar/main.dart';
import '../video-info/main.dart';
import '../video-oprations/main.dart';

class VideoMain extends StatefulWidget {
  const VideoMain({super.key});

  @override
  State<VideoMain> createState() => _VideoMainState();
}

class _VideoMainState extends State<VideoMain> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: DyVideo(),
        ),
        Positioned(
            bottom: 20,
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
          right: 10,
          bottom: 20,
        )
      ],
    );
  }
}
