import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:qr_scanner/result_screen.dart';

const bgColor = Colors.white;

class QRscreen extends StatefulWidget {
  const QRscreen({super.key});

  @override
  State<QRscreen> createState() => _QRscreenState();
}

class _QRscreenState extends State<QRscreen> {
  bool isScanCompleted = false;
  void closeScreen() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("QR Scanner",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            )),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                Text(
              "Place the QR code in that aera ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 1),
                ),
                SizedBox(height: 10),
                Text("Scanning will be started automatically",
                style: TextStyle(
                    fontSize: 16, color: Colors.black54, letterSpacing: 1)),
              ])),
          // Expanded(
          //   flex: 4,
          //   child: MobileScanner(
          //     onDetect: (barcodes) {
          //       if (!isScanCompleted) {
          //         String code = barcodes.raw ?? '---';
          //         isScanCompleted = true;
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) =>
          //                   ResultScreen(closeScreen: closeScreen, code: code),
          //             ));
          //       }
          //     },
        

          //   ),
          // ),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
        ]),
      ),
    );
  }
}
