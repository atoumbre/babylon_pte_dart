import 'package:test/test.dart';
import 'package:babylon_pte_api/babylon_pte_api.dart';

// tests for AccessRules
void main() {
  final instance = AccessRulesBuilder();
  // TODO add properties to the builder and call build()

  group(AccessRules, () {
    // String defaultRule
    test('to test the property `defaultRule`', () async {
      var api = BabylonPteApi();

      DefaultApi defaultApi = api.getDefaultApi();

      var response = await defaultApi.getComponent(address: '02090a055eeb8c7f8df1f43b1769156b533f411518b80c5ec3b739');
      print(response);
    });
  });
}
