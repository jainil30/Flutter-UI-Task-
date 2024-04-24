import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

/*
  Created By : Jainil Dalwadi
 */
class EyeScreen extends StatefulWidget {
  const EyeScreen({super.key, this.cameras});
  static const String routeName = "/eyeScreen";
  final List<CameraDescription>? cameras;

  @override
  State<EyeScreen> createState() => _EyeScreenState();
}

class _EyeScreenState extends State<EyeScreen> {
  late CameraController _cameraController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initCamera(widget.cameras![0]);
  }

  Future initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.ultraHigh);

    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _cameraController.value.isInitialized
            ? CameraPreview(_cameraController)
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
