import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:share_plus/share_plus.dart';

class ProfileQrPage extends StatelessWidget {
  const ProfileQrPage({super.key});

  //   Future<Uint8List> _getWidgetImage() async {
  //  try {
  //    RenderRepaintBoundary boundary =
  //       _renderObjectKey.currentContext.findRenderObject();
  //    ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  //    ByteData byteData =
  //       await image.toByteData(format: ui.ImageByteFormat.png);
  //    var pngBytes = byteData.buffer.asUint8List();
  //    var bs64 = base64Encode(pngBytes);
  //    debugPrint(bs64.length.toString());
  //    return pngBytes;
  //  } catch (exception) {}

  Future<Uint8List?> toQrImageData(String text, BuildContext context) async {
    try {
      final image = await QrPainter(
        data: text,
        version: QrVersions.auto,
        gapless: false,
        eyeStyle: QrEyeStyle(
          color: Theme.of(context).primaryColor,
          eyeShape: QrEyeShape.square,
        ),
        dataModuleStyle: QrDataModuleStyle(
          color: Theme.of(context).primaryColor,
          dataModuleShape: QrDataModuleShape.square,
        ),
      ).toImage(300);
      final a = await image.toByteData(format: ui.ImageByteFormat.png);
      return a?.buffer.asUint8List();
    } catch (e) {
      return null;
    }
  }

  shareImage(Uint8List data) {
    Share.shareXFiles(
      [XFile.fromData(data, mimeType: 'image/jpeg')],
      fileNameOverrides: ['coinstack-name.jpg'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  QrImageView(
                    size: 350,
                    data: 'profile:coinstack:542452',
                    eyeStyle: QrEyeStyle(
                      color: Theme.of(context).primaryColor,
                      eyeShape: QrEyeShape.square,
                    ),
                    dataModuleStyle: QrDataModuleStyle(
                      color: Theme.of(context).primaryColor,
                      dataModuleShape: QrDataModuleShape.square,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Full name'),
                  Text('Coin Stack ID: 5456672'),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Request money'),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async {
                  var image = await toQrImageData(
                    'profile:coinstack:542452',
                    context,
                  );
                  if (image == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Something went wrong')),
                    );
                    return;
                  }
                  shareImage(image);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.send),
                    SizedBox(width: 6),
                    Text('Share'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
