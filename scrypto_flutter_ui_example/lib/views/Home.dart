// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';
import 'package:scrypto_wallet/common/extensions/string_extentions.dart';
import 'package:scrypto_wallet/common/widgets/TextMiddleEllipsis.dart';
import 'package:scrypto_wallet/views/Wallet/Wallet.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final con = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                'Softi Wallet'.headline6.color(Colors.white).make(),
                const SizedBox(height: 8),
                TextMiddleEllipsis(con.displayedAccount),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(50),
            height: 800,
            child: Column(
              children: const [
                Expanded(child: WalletView()),
                // PackageView(),
              ],
            ),
          ));
    });
  }
}
