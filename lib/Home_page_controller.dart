import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

  class Home_page_controller extends GetxController{
    var valorCodigoBarras = '';

    Future<void> scanearCodigosBarras() async {
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#008000',
          'Cancelar',
          true,
          ScanMode.BARCODE
      );
      if(barcodeScanRes == '-1'){
        Get.snackbar('Cancelado', 'Leitura Cancelada');
      }
      else{
        valorCodigoBarras = barcodeScanRes;
        update();
      }
    }
  }
  