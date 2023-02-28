import 'package:flutter/material.dart';

class DyAppBar extends StatelessWidget {
  const DyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: 70,
      color: Color.fromRGBO(0, 0, 0, 0),
      child: Row(
        children: [
          Icon(
            Icons.abc,
            color: Colors.white,
          )
        ],
      ),
    ));
  }
}
