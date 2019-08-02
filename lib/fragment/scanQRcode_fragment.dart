import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ScanQRCodePage();
  }
}

class ScanQRCodePage extends StatefulWidget {
  ScanQRCodePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ScanQRCodePage> {

  String result = "Please scan the QR code";

  Future _scanQR() async {
      String qrResult = await FlutterBarcodeScanner.scanBarcode("#004297", "Cancel", true);
      setState(() {
        result = qrResult;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Expanded(child: Text(
                  result,
                  style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ))
              ],
            ),
            new Container(
              margin: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.greenAccent,
                    onPressed: _scanQR,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.camera_alt),
                        Text(" Scanner")
                      ],
                    ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
