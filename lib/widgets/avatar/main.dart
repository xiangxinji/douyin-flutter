import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyAvatar extends StatelessWidget {
  final double size;

  const DyAvatar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(
            height: 5,
          ),
          Text(
            '添加头像',
            style: TextStyle(color: Colors.white),
          )
        ]),
      ),
      decoration: BoxDecoration(
          color: Colors.black45,
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(size / 2)),
    );
  }
}
