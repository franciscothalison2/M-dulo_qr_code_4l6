import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_modulo/Home_page.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages:[
        GetPage(name: "/", page: () => Homepage()),
      ]
    );
  }
}