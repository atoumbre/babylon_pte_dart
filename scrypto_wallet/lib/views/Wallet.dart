// ignore_for_file: file_names

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:jdenticon_dart/jdenticon_dart.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';
import 'package:velocity_x/velocity_x.dart';

class WalletViewController extends GetxController {
  String getGeneratedIcon(String input) {
    return Jdenticon.toSvg(input);
  }

  @override
  void onReady() {
    super.onReady();
    AppController.find.loadResources();
  }
}

class WalletView extends GetView<WalletViewController> {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: WalletViewController(),
        builder: (WalletViewController controller) {
          return ListView.builder(
              itemCount: AppController.find.accountData()?.ownedResources.length ?? 0,
              itemBuilder: (context, index) {
                var resource = AppController.find.accountData()!.ownedResources[index];

                return Row(
                  children: [
                    // const SizedBox(width: 200),
                    Expanded(
                      child: Neumorphic(
                        style: const NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                          depth: 4,
                          lightSource: LightSource.topLeft,
                          color: Colors.white,
                        ),
                        child: ListTile(
                          leading: SvgPicture.string(
                            controller.getGeneratedIcon(resource.resourceAddress),
                            fit: BoxFit.fill,
                            height: 48,
                            width: 48,
                          ),
                          title: Text('${resource.amount} ${resource.symbol}'),
                          subtitle: Text(resource.name),
                          // trailing: Text(resource.amount),
                        ),
                      ).p16(),
                    ),
                    // const SizedBox(width: 200),
                  ],
                );
              });
        });
  }
}
