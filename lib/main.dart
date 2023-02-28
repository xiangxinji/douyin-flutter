import 'package:douyin/screen/Home/index.dart';
import 'package:douyin/widgets/appBar/main.dart';
import 'package:douyin/widgets/bttomNavigationBar/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'pingfang'),
      home: EntryScaffold(),
    );
  }
}

class EntryScaffold extends StatefulWidget {
  const EntryScaffold({super.key});

  @override
  State<EntryScaffold> createState() => _EntryScafoldState();
}

List<Widget> indexPages = [const HomePage()];

class _EntryScafoldState extends State<EntryScaffold> {
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: indexPages[index],
      bottomNavigationBar: DyBottomNavigationBar(
        currentIndex: index,
        onTap: (index) {
          this.index = index;
          setState(() {});
        },
      ),
    );
  }
}
