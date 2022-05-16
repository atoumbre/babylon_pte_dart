// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/controllers/ApiController.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';
import 'package:scrypto_wallet/views/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class AppBindings extends Bindings {
  @override
  void dependencies() async {
    Get.put(AppController());
    Get.put(ApiService());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Softi Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      initialBinding: AppBindings(),
    );
  }
}
