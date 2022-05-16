// ignore_for_file: file_names

import 'dart:convert';

import 'package:babylon_pte_api/babylon_pte_api.dart';
import 'package:babylon_pte_extenstion/babylon_pte_extenstion.dart';
import 'package:get/get.dart';
import 'package:scrypto_wallet/common/values/const.dart';

class AppController extends GetxController {
  static AppController get find => Get.find();

  final accountAddress = '02b319b77029c64aa07a57600e4daed511b64a12d2a0bc3101f1dc'.obs;
  final rnsName = ''.obs;
  final accountData = Rxn<Component>();
  final pteApi = BabylonPteApi().getDefaultApi();

  String get displayedAccount => rnsName() == '' ? accountAddress() : rnsName();

  Future<void> loadResources() async {
    if (accountAddress() == '') return;

    var response = await pteApi.getComponent(address: accountAddress());

    if (response.statusCode != 200) return;

    accountData(response.data);

    await fetchRnsData();
  }

  Future<void> fetchRnsData() async {
    var rnsResource = accountData.value?.ownedResources.firstWhere((resource) => resource.resourceAddress == RNS_RESOURCE_ADDRESS);

    if (rnsResource?.nonFungibleIds == null) return;

    var nonFungibleId = rnsResource?.nonFungibleIds?[0];

    if (nonFungibleId == null) return;

    var response = await pteApi.getNonFungible(address: '$RNS_RESOURCE_ADDRESS$nonFungibleId');

    if (response.statusCode != 200) return;

    var nonFungibleData = response.data;
    var fields = jsonDecode(nonFungibleData?.mutableData ?? '{}')['fields'] as List;
    var rns = fields.firstWhere((f) {
      return (f)['type'] == 'String';
    })['value'];

    print(rns);
    rnsName(rns as String);
  }

  @override
  void onReady() async {
    super.onReady();

    accountAddress(await getAccountAddress());
    await loadResources();
  }
}
