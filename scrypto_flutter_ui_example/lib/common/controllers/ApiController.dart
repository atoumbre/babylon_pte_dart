// ignore_for_file: file_names

import 'package:babylon_pte_extenstion/babylon_pte_extenstion.dart';
import 'package:babylon_pte_manifest/babylon_pte_manifest.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/values/const.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';

class ApiService extends GetxService {
  final String _randomHelloTokenComponent = '020090d23f2d15170f25d40b97a7a0a70877db41cf2e5ac7c90fc7';
  final String _randomGumballMachinComponent = '02fc1ea385e9e48002409b84101b7ef96b2a1bcdfe419e2d6ce551';

  static ApiService get find => Get.find();

  String get accountAddress => AppController.find.accountAddress();

  // final pteApi = BabylonPteApi().getDefaultApi();

  // void test() {
  //   var manifest = ManifestBuilder() //
  //       .withdrawFromAccountByAmount(accountAddress, 50000, XRD_TOKEN)
  //       .takeFromWorktop(XRD_TOKEN, 'XRD')
  //       .callMethod('02090a055eeb8c7f8df1f43b1769156b533f411518b80c5ec3b739', 'add_liquidity', ['Bucket("XRD")'])
  //       .depositBatch(accountAddress)
  //       .build()
  //       .toString();

  //   signTransaction(manifest);
  // }

  Future<void> buyGumball() async {
    var manifest = ManifestBuilder() //
        .withdrawFromAccountByAmount(accountAddress, 1, XRD_RESOURCE_ADDRESS)
        .takeFromWorktop(XRD_RESOURCE_ADDRESS, 'XRD')
        .callMethod(_randomGumballMachinComponent, 'buy_gumball', ['Bucket("XRD")'])
        .depositBatch(accountAddress)
        .build()
        .toString();

    String hash = await signTransaction(manifest);
    print('gum purchase hash: $hash');

    await AppController.find.loadResources();
  }

  Future<void> getFreeToken() async {
    var manifest = ManifestBuilder() //
        .callMethod(_randomHelloTokenComponent, 'free_token', [])
        .depositBatch(accountAddress)
        .build()
        .toString();

    String hash = await signTransaction(manifest);
    print('free token hash: $hash');

    await AppController.find.loadResources();
  }

  Future<void> registerRns(String name, {int reserveYears = 1}) async {
    var amount = DEPOSIT_PER_YEAR * reserveYears;

    var manifest = ManifestBuilder()
        .withdrawFromAccountByAmount(accountAddress, amount, XRD_RESOURCE_ADDRESS)
        .takeFromWorktop(XRD_RESOURCE_ADDRESS, 'xrd')
        .callMethod(RNS_COMPONENT_ADDRESS, 'register_name', ['"$name"', 'ComponentAddress("$accountAddress")', '${reserveYears}u8', 'Bucket("xrd")'])
        .depositBatch(accountAddress)
        .build()
        .toString();

    print('Manifesh: $manifest');

    String hash = await signTransaction(manifest);
    print('Register hash: $hash');

    await AppController.find.loadResources();
  }
}
