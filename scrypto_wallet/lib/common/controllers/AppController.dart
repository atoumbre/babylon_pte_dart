// ignore_for_file: file_names

import 'package:babylon_pte_api/babylon_pte_api.dart';
import 'package:babylon_pte_extenstion/babylon_pte_extenstion.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  static AppController get find => Get.find();

  final accountAddress = '02b319b77029c64aa07a57600e4daed511b64a12d2a0bc3101f1dc'.obs;
  final accountData = Rxn<Component>();
  final pteApi = BabylonPteApi().getDefaultApi();

  Future<void> loadResources() async {
    if (accountAddress() == '') return;

    var result = await pteApi.getComponent(address: accountAddress());

    if (result.statusCode != 200) return;

    accountData(result.data);
  }

  @override
  void onReady() async {
    super.onReady();

    accountAddress(await getAccountAddress());
    await loadResources();
  }
}
