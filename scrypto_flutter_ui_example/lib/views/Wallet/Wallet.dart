// ignore_for_file: file_names

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:jdenticon_dart/jdenticon_dart.dart';
import 'package:scrypto_wallet/common/controllers/ApiController.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';
import 'package:scrypto_wallet/common/extensions/string_extentions.dart';
import 'package:scrypto_wallet/views/Wallet/WalletItem.dart';

class WalletViewController extends GetxController {
  static WalletViewController get find => Get.find();

  String getGeneratedIcon(String input) {
    return Jdenticon.toSvg(input);
  }

  Future<void> registerRns() async {
    var text = await showTextInputDialog(
      context: Get.context!,
      textFields: const [
        DialogTextField(
          hintText: 'Enter a XRD domain',
        ),
      ],
    );

    if (text == null || text.isEmpty) return;

    await ApiService.find.registerRns(text[0]);
  }
}

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: WalletViewController(),
        builder: (WalletViewController controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  onPressed: () => ApiService.find.buyGumball(),
                  child: 'Buy a gum ball'.bodyText1.make(),
                ),
                const SizedBox(
                  width: 32,
                ),
                ElevatedButton(
                  onPressed: () => ApiService.find.getFreeToken(),
                  child: 'Get free token'.bodyText1.make(),
                ),
                const SizedBox(
                  width: 32,
                ),
                ElevatedButton(
                  onPressed: () => controller.registerRns(),
                  child: 'Register a Pouch RNS Domain'.bodyText1.make(),
                )
              ]),
              Expanded(
                  child: ListView.builder(
                      itemCount: AppController.find.accountData()?.ownedResources.length ?? 0,
                      itemBuilder: (context, index) {
                        var resource = AppController.find.accountData()!.ownedResources[index];

                        return WalletItem(resource: resource);
                      })),
            ],
          );
        });
  }
}
