import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyBanner extends StatelessWidget {
  final double width;
  final double height;

  final double standardHeight;

  const DyBanner(
      {super.key,
      required this.width,
      required this.height,
      required this.standardHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/video1.jpg'),
              fit: height > standardHeight ? BoxFit.cover : BoxFit.fitWidth)),
    );
  }
}
