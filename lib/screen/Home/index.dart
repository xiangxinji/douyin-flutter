import 'package:douyin/widgets/appBar/main.dart';
import 'package:douyin/widgets/video-main/main.dart';
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
          PageView(
            scrollDirection: Axis.vertical,
            children: [
              VideoMain(),
              VideoMain(),
            ],
          ),
          const Positioned(top: 0, left: 0, child: DyAppBar()),
        ],
      ),
    );
  }
}
