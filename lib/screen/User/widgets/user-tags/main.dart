import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyUserTags extends StatelessWidget {
  const DyUserTags({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromRGBO(243, 243, 243, 1),
          borderRadius: BorderRadius.all(Radius.circular(3))),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(mainAxisSize: MainAxisSize.min, children: const [
        Icon(
          Icons.add,
          size: 19,
        ),
        Text('添加年龄、所在地等标签')
      ]),
    );
  }
}
