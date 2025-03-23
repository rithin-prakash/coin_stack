import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

//TODO: remove the direct use of torch plugin and move it to data layer
class FlashLightContainer extends StatefulWidget {
  const FlashLightContainer({super.key});

  @override
  State<FlashLightContainer> createState() => _FlashLightContainerState();
}

class _FlashLightContainerState extends State<FlashLightContainer> {
  bool isTorchAvailable = false;
  bool flashOn = false;

  flashLightAvailable() async {
    try {
      isTorchAvailable = await TorchLight.isTorchAvailable();
      setState(() {});
    } on Exception catch (_) {}
  }

  toggleFlashLight() async {
    if (!flashOn) {
      setState(() {
        flashOn = true;
      });
      TorchLight.enableTorch();
    } else {
      setState(() {
        flashOn = false;
      });
      TorchLight.disableTorch();
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() {
    flashLightAvailable();
  }

  @override
  Widget build(BuildContext context) {
    return !isTorchAvailable
        ? Container()
        : IconButton(
          iconSize: 44,
          onPressed: () {
            toggleFlashLight();
          },
          icon: Icon(
            flashOn ? Icons.flash_off : Icons.flash_on,
            color: Colors.white,
          ),
        );
  }
}
