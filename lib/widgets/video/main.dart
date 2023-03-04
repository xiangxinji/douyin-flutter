import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class DyVideo extends StatefulWidget {
  const DyVideo({super.key});

  @override
  State<DyVideo> createState() => _DyVideoState();
}

class _DyVideoState extends State<DyVideo> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network, "http://192.168.71.6:8080/bee.mp4");

    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
            looping: true,
            fit: BoxFit.contain,
            autoPlay: false,
            overlay: Container(color: Colors.transparent),
            autoDispose: true),
        betterPlayerDataSource: betterPlayerDataSource);
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 100,
      child: BetterPlayer(
        controller: _betterPlayerController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
