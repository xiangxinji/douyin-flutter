import 'package:douyin/widgets/avatar/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../widgets/banner/main.dart';

class UserSelfPage extends StatefulWidget {
  const UserSelfPage({super.key});

  @override
  State<UserSelfPage> createState() => _UserSelfPageState();
}

class _UserSelfPageState extends State<UserSelfPage> {
  _buildRightTopActions(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.abc_outlined,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.car_crash_outlined,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.face,
              color: Colors.white,
            ))
      ],
    );
  }

  _buildUserHeader(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        const DyAvatar(
          size: 90,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 3),
                child: const Text(
                  '点击填写名字',
                  style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const Text('抖音号：898191191991',
                  style: TextStyle(
                    color: Colors.white,
                  ))
            ],
          ),
        )
      ],
    );
  }

  _buildMainPanel(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      width: dw,
      child: const Text('aaa'),
    );
  }

  @override
  Widget build(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            DyBanner(
              height: 290,
              width: dw,
            ),
            Positioned.fill(child: Container()),
            Positioned(child: _buildUserHeader(context), top: 50),
            Positioned(
              right: 0,
              child: SafeArea(child: _buildRightTopActions(context)),
            ),
          ],
        ),
        Transform.translate(
          offset: Offset(0, -20),
          child: _buildMainPanel(context),
        )
      ],
    );
  }
}
