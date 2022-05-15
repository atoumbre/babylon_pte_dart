// ignore_for_file: avoid_web_libraries_in_flutter

@JS()
library babylon_pte_extenstion;

import 'dart:html';

import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('getAccountAddress')
external _getAccountAddress();

@JS('signTransaction')
external _signTransaction(String manifest);

getAccountAddress() async {
  var promise = _getAccountAddress();

  try {
    var result = await promiseToFuture(promise);
    return result;
  } catch (e) {
    rethrow;
  }
}

signTransaction(String manifest) async {
  var promise = _signTransaction(manifest);

  try {
    var result = await promiseToFuture(promise);
    window.console.log(result);
    return result;
  } catch (e) {
    rethrow;
  }
}
