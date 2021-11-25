import 'package:flutter/material.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),


    );
  }
}
