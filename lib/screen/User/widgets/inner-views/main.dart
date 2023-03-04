import 'package:douyin/theme/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DyUserInnerViews extends StatefulWidget {
  const DyUserInnerViews({super.key});

  @override
  State<DyUserInnerViews> createState() => _DyUserInnerViewsState();
}

List<Tab> tabs = <Tab>[
  Tab(
    child: Text(
      '作品',
      style: TextStyle(
          color: DyThemeData.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    ),
  ),
  Tab(
    child: Text(
      '私密',
      style: TextStyle(
          color: DyThemeData.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    ),
  ),
  Tab(
    child: Text(
      '收藏',
      style: TextStyle(
          color: DyThemeData.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    ),
  ),
  Tab(
    child: Text(
      '喜欢',
      style: TextStyle(
          color: DyThemeData.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold),
    ),
  )
];

class _DyUserInnerViewsState extends State<DyUserInnerViews>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var dh = MediaQuery.of(context).size.height;
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: tabs,
          indicatorColor: DyThemeData.primaryColor,
        ),
        Container(
          height: dh,
          child: TabBarView(controller: _tabController, children: [
            Text('作品1'),
            Text('作品2'),
            Text('作品3'),
            Text('作品4'),
          ]),
        )
      ],
    );
  }
}
