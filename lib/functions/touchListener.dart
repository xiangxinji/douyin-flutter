import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

typedef OnDownListener = void Function(double y);
typedef OnResetListener = void Function();

class DyTouchListener extends StatelessWidget {
  DyTouchListener(
      {super.key,
      required this.child,
      required this.onDown,
      required this.onRest});

  final Widget child;
  final OnDownListener onDown;
  final OnResetListener onRest;

  double rectY = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (event) {
        rectY = event.localPosition.dy;
        print('开始');
      },
      onPointerMove: (event) {
        var newRectY = event.localPosition.dy;
        if (newRectY - rectY > 0) {
          print(newRectY.toString() + "-" + rectY.toString());
          onDown(newRectY - rectY);
        } else {
          rectY = event.localPosition.dy;
          onRest();
        }
      },
      onPointerUp: (event) {
        onRest();
        rectY = 0;
      },
      child: child,
    );
  }
}
