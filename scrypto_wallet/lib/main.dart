// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/controllers/TestController.dart';
import 'package:scrypto_wallet/views/Wallet.dart';
import 'common/controllers/AppController.dart';
import 'common/extensions/string_extentions.dart';

void main() async {
  Get.put(AppController());
  Get.put(TestController());
  runApp(const MyApp());
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
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final con = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                'Softi Wallet'.headline6.color(Colors.white).make(),
                const SizedBox(height: 8),
                'Connected Account: ${AppController.find.accountAddress()}'.subtitle1.make(),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(50),
            height: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () => TestController.find.buyGumball(),
                    child: 'Buy a gum ball'.bodyText1.make(),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  ElevatedButton(
                    onPressed: () => TestController.find.getFreeToken(),
                    child: 'Get free token'.bodyText1.make(),
                  )
                ]),
                const Expanded(child: WalletView()),
              ],
            ),
          ));
    });
  }
}
