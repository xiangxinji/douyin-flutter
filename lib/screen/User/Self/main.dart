import 'package:douyin/functions/touchListener.dart';
import 'package:douyin/screen/User/widgets/user-tags/main.dart';
import 'package:douyin/widgets/avatar/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'dart:math';
import '../../../widgets/banner/main.dart';
import '../widgets/actions/main.dart';
import '../widgets/inner-views/main.dart';
import '../widgets/input-describe/main.dart';
import '../widgets/shop/shop-tag/main.dart';
import '../widgets/user-total/main.dart';
import 'controllers/user_self_controller.dart';

class UserSelfPage extends StatefulWidget {
  const UserSelfPage({super.key});

  @override
  State<UserSelfPage> createState() => _UserSelfPageState();
}

class _UserSelfPageState extends State<UserSelfPage>
    with TickerProviderStateMixin {
  final usc = Get.put(UserSelfController());

  late Animation animation;
  late AnimationController animationController;

  @override
  initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
  }

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
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))),
      width: dw,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        DyUserTotal(),
        DyInputDescribe(),
        DyUserTags(),
        DyShopTag(),
        DyUserActions(),
        DyUserInnerViews()
      ]),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usc.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    return DyTouchListener(
        child: SingleChildScrollView(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Obx(() => DyBanner(
                      standardHeight: 290,
                      height: usc.userBannerHeight.value,
                      width: dw,
                    )),
                Positioned.fill(child: Container()),
                Positioned(child: _buildUserHeader(context), bottom: 70),
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
        )),
        onDown: (y) {
          usc.userBannerHeight.value = 290 + (y / 3);
        },
        onRest: () {
          var tween = Tween<double>(
            begin: usc.userBannerHeight.value,
            end: 290,
          )..chain(CurveTween(curve: Curves.easeInOut));
          animation = tween.animate(animationController);
          animation.addListener(() {
            usc.userBannerHeight.value = animation.value;
          });
          animationController.reset();
          animationController.forward();
        });
    ;
  }
}
