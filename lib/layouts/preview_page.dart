import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';

class PdfPreviewPage extends StatelessWidget {
  final Uint8List pdfBytes;

  PdfPreviewPage({required this.pdfBytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDF Preview")),
      body: PdfPreview(
        build: (format) async => pdfBytes,
      ),
    );
  }
}
