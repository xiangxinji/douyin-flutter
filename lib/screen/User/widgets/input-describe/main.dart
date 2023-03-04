import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyInputDescribe extends StatelessWidget {
  const DyInputDescribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '点击添加介绍，让大家认识你',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade500),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.edit,
              size: 17,
            ),
          )
        ],
      ),
    );
  }
}
