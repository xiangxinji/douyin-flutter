import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

late List<CameraDescription> _cameras = [];

class CapturePage extends StatefulWidget {
  const CapturePage({super.key});

  @override
  State<CapturePage> createState() => _CapturePageState();
}

class _CapturePageState extends State<CapturePage> {
  bool isInited = false;
  late CameraController controller;

  Future<void> initCameras() async {
    _cameras = await availableCameras();

    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      isInited = true;
      setState(() {});
    }).catchError((Object e) {
      print(e);
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // 权限未定义
            break;
          default:
            // 其他错误
            break;
        }
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initCameras();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  _buildBackAction() {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
          )
        ]),
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: 36,
        ),
      ),
    ));
  }

  _buildStartAction(BuildContext context) {
    var dw = MediaQuery.of(context).size.width;
    var dh = MediaQuery.of(context).size.height;
    double size = 80;
    double pt = 4;
    return Container(
      width: dw,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size,
            height: size,
            padding: EdgeInsets.all(pt),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(size / 2),
                color: Colors.transparent),
            child: Container(
              width: size - pt,
              height: size - pt,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular((size - pt) / 2)),
            ),
          )
        ],
      ),
    );
  }

  _buildView(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: controller.buildPreview(),
        ),
        Positioned(
          child: _buildBackAction(),
          left: 10,
          top: 20,
        ),
        Positioned(child: _buildStartAction(context), bottom: 80, left: 0)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return isInited ? _buildView(context) : Container();
  }
}
