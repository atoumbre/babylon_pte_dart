import 'package:babylon_pte_extenstion/babylon_pte_extenstion.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Current Account', () {
    var address = getAccountAddress();

    expect(address, '<browser_address>');
  });
}
