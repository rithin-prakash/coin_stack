import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/flash_light_container.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

@RoutePage()
class ScanQrPage extends StatefulWidget {
  const ScanQrPage({super.key});

  @override
  State<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController();

  StreamSubscription<Object?>? _subscription;

  @override
  void initState() {
    super.initState();
    // Start listening to lifecycle changes.
    WidgetsBinding.instance.addObserver(this);

    // Start listening to the barcode events.
    _subscription = controller.barcodes.listen(_handleBarcode);

    // Finally, start the scanner itself.
    unawaited(controller.start());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.hasCameraPermission) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        _subscription = controller.barcodes.listen(_handleBarcode);
        unawaited(controller.start());
      case AppLifecycleState.inactive:
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
    }
  }

  void _handleBarcode(BarcodeCapture event) {
    // print(event);
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_subscription?.cancel());
    _subscription = null;
    super.dispose();
    await controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // late final scanWindow = Rect.fromCenter(
    //   center: MediaQuery.sizeOf(context).center(const Offset(0, -100)),
    //   width: 300,
    //   height: 200,
    // );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // MobileScanner(
          //   scanWindow: scanWindow,
          //   controller: controller,
          //   errorBuilder: (context, error, _) {
          //     return Container();
          //   },
          //   fit: BoxFit.contain,
          // ),
          Expanded(
            child: Center(
              child: QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 250.0,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Scan QR code to pay',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          Text(
            'Hold the QR inside the frame',
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.white),
          ),
          SizedBox(height: 20),
          FlashLightContainer(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
