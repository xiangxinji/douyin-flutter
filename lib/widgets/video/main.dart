import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class DyVideo extends StatefulWidget {
  const DyVideo({super.key});

  @override
  State<DyVideo> createState() => _DyVideoState();
}

class _DyVideoState extends State<DyVideo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer.network(
        "http://172.19.32.1:8080/bee.mp4",
        betterPlayerConfiguration: BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
