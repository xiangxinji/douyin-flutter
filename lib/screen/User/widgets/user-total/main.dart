import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyUserTotal extends StatelessWidget {
  DyUserTotal({super.key});

  final TextStyle _countStyle = const TextStyle(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
  final TextStyle _labelStyle = const TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );

  _buildItem(int count, String label) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Text(
            count.toString(),
            style: _countStyle,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2),
            child: Text(
              label.toString(),
              style: _labelStyle,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          _buildItem(0, '获赞'),
          _buildItem(0, '朋友'),
          _buildItem(0, '关注'),
          _buildItem(0, '粉丝'),
        ],
      ),
    );
  }
}
