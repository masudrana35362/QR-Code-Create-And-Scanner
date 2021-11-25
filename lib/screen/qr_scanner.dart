import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/services.dart';
import 'package:scanner/widget/button_widget.dart';
import '../main.dart';

class QRScanner extends StatefulWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {

  String qrCode = 'Unknown';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scan Result',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '$qrCode',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 72),
            ButtonWidget(
              text: 'Start QR scan',
              onClicked: () => scanQRCode(),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanQRCode()async{
  final qrCode= await FlutterBarcodeScanner.scanBarcode(
     '#ff6666',
    'Cancel',
    true,ScanMode.QR,
   );
  if
  (!mounted) return;
  setState(() {
    this.qrCode=qrCode;
  });

  }
}
