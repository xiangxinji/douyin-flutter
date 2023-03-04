import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyUserActions extends StatefulWidget {
  const DyUserActions({super.key});

  @override
  State<DyUserActions> createState() => _DyUserActionsState();
}

class _DyUserActionsState extends State<DyUserActions> {
  _buildActionItem(String label) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Color.fromRGBO(243, 243, 243, 1),
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(child: _buildActionItem('编辑资料10%')),
          SizedBox(
            width: 20,
          ),
          Expanded(child: _buildActionItem('添加朋友')),
        ],
      ),
    );
  }
}
