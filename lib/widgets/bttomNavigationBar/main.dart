import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyBottomNavigationBar extends StatelessWidget {
  Color bgColor = Color.fromRGBO(22, 22, 22, 1);

  final Function onTap;

  final int currentIndex;
  DyBottomNavigationBar(
      {super.key, required this.onTap, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(color: bgColor),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DyBottomNavigationBarItem(
                  text: '首页',
                  active: currentIndex == 0,
                  onTap: () {
                    onTap(0);
                  },
                ),
                DyBottomNavigationBarItem(
                  text: '朋友',
                  active: currentIndex == 1,
                  onTap: () {
                    onTap(1);
                  },
                ),
                DyBottomNavigationBarItem(
                  type: 'icon',
                  icon: Icons.abc_outlined,
                  active: currentIndex == 2,
                  onTap: () {
                    onTap(2);
                  },
                ),
                DyBottomNavigationBarItem(
                  text: '消息',
                  active: currentIndex == 3,
                  onTap: () {
                    onTap(3);
                  },
                ),
                DyBottomNavigationBarItem(
                  text: '我',
                  active: currentIndex == 4,
                  onTap: () {
                    onTap(4);
                  },
                ),
              ],
            )));
  }
}

class DyBottomNavigationBarItem extends StatelessWidget {
  Widget? child;

  String? type;

  String? text;

  IconData? icon;

  Function? onTap;

  late bool active;

  TextStyle ts = TextStyle(fontSize: 15, color: Colors.white);

  TextStyle activeTextStyle = TextStyle(color: Colors.red);

  DyBottomNavigationBarItem(
      {super.key,
      this.child,
      this.type = 'text',
      this.text,
      this.icon,
      this.onTap,
      this.active = false});

  _buildChild() {
    if (type == 'icon') {
      return Icon(
        icon,
        color: Colors.white,
      );
    } else if (type == 'text') {
      return Text(
        text ?? '',
        style: active ? activeTextStyle : ts,
      );
    }
    return child;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: _buildChild(),
        onTap: () {
          onTap!();
        },
      ),
    );
  }
}
