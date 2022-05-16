// ignore_for_file: file_names

import 'package:babylon_pte_extenstion/babylon_pte_extenstion.dart';
import 'package:babylon_pte_manifest/babylon_pte_manifest.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/values/const.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';

class TestController extends GetxController {
  final String _randomHelloTokenComponent = '020090d23f2d15170f25d40b97a7a0a70877db41cf2e5ac7c90fc7';
  final String _randomGumballMachinComponent = '02fc1ea385e9e48002409b84101b7ef96b2a1bcdfe419e2d6ce551';

  static TestController get find => Get.find();

  // final pteApi = BabylonPteApi().getDefaultApi();

  // void test() {
  //   var manifest = ManifestBuilder() //
  //       .withdrawFromAccountByAmount(AppController.find.accountAddress(), 50000, XRD_TOKEN)
  //       .takeFromWorktop(XRD_TOKEN, 'XRD')
  //       .callMethod('02090a055eeb8c7f8df1f43b1769156b533f411518b80c5ec3b739', 'add_liquidity', ['Bucket("XRD")'])
  //       .depositBatch(AppController.find.accountAddress())
  //       .build()
  //       .toString();

  //   signTransaction(manifest);
  // }

  Future<void> buyGumball() async {
    var manifest = ManifestBuilder() //
        .withdrawFromAccountByAmount(AppController.find.accountAddress(), 1, XRD_TOKEN)
        .takeFromWorktop(XRD_TOKEN, 'XRD')
        .callMethod(_randomGumballMachinComponent, 'buy_gumball', ['Bucket("XRD")'])
        .depositBatch(AppController.find.accountAddress())
        .build()
        .toString();

    String hash = await signTransaction(manifest);
    print('gum purchase hash: $hash');

    await AppController.find.loadResources();
  }

  Future<void> getFreeToken() async {
    var manifest = ManifestBuilder() //
        .callMethod(_randomHelloTokenComponent, 'free_token', [])
        .depositBatch(AppController.find.accountAddress())
        .build()
        .toString();

    String hash = await signTransaction(manifest);
    print('free toke hash: $hash');

    await AppController.find.loadResources();
  }
}
