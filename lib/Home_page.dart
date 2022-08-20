import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qr_modulo/Home_page_controller.dart';

class Homepage extends StatelessWidget {

  Homepage(){
    Get.put(Home_page_controller());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Processo de 4l6"),
      ),
      body: SizedBox.expand(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Valor do código de barras: ",
          style: Get.theme.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold, color: Colors.green),
          ),

          GetBuilder<Home_page_controller>(
              builder: (controller) {
                return Text(
                    controller.valorCodigoBarras,
                    style: Get.theme.textTheme.headline6
                );
              }
          ),


          // Text("123456",
          // style: Get.theme.textTheme.headline6
          // ),

          SizedBox(
            height: 10,
          ),
          TextButton.icon(
                onPressed: (){
                  Get.find<Home_page_controller>().scanearCodigosBarras();
                },
                icon: Image.asset('assets/images/icon.png', width: 80,),
                label: Text("Ler códigos de Barras",
                style: Get.theme.textTheme.headline6,),
            )
        ],
      ),
    )
    );
  }
}
