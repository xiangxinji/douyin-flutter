import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyBanner extends StatelessWidget {
  final double width;
  final double height;

  const DyBanner({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/video1.jpg'),
              fit: BoxFit.fitWidth)),
    );
  }
}
