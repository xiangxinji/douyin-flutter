import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class _VideoOprationIcon extends StatelessWidget {
  late int number;

  late IconData icon;

  _VideoOprationIcon({super.key, required this.number, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(children: [
        Icon(icon, color: Colors.white),
        Text(
          number.toString(),
          style: TextStyle(color: Colors.white),
        )
      ]),
    );
  }
}

class _VideoOprationAvatar extends StatelessWidget {
  const _VideoOprationAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [Text('avatar')],
      ),
    );
  }
}

class VideoOprations extends StatelessWidget {
  const VideoOprations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        _VideoOprationAvatar(),
        _VideoOprationIcon(
          number: 3188,
          icon: Icons.comment,
        ),
        _VideoOprationIcon(
          number: 3188,
          icon: Icons.star,
        ),
        _VideoOprationIcon(
          number: 3188,
          icon: Icons.share,
        )
      ]),
    );
  }
}
