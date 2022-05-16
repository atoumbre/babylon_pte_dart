import 'package:test/test.dart';
import 'package:babylon_pte_api/babylon_pte_api.dart';


/// tests for DefaultApi
void main() {
  final instance = BabylonPteApi().getDefaultApi();

  group(DefaultApi, () {
    // Get info about a component
    //
    //Future<Component> getComponent(String address) async
    test('test getComponent', () async {
      // TODO
    });

    // Get the current epoch
    //
    //Future<Epoch> getEpoch() async
    test('test getEpoch', () async {
      // TODO
    });

    // Get info about a specific non-fungible unit
    //
    //Future<NonFungible> getNonFungible(String address) async
    test('test getNonFungible', () async {
      // TODO
    });

    // Get the nonce of a signer set
    //
    //Future<Nonce> getNonce(BuiltList<String> signers) async
    test('test getNonce', () async {
      // TODO
    });

    // Retrieve a receipt
    //
    //Future<Receipt> getReceipt(String hash) async
    test('test getReceipt', () async {
      // TODO
    });

    // Get info about a resource
    //
    //Future<Resource> getResource(String address) async
    test('test getResource', () async {
      // TODO
    });

    // Retrieve a transaction
    //
    //Future<Transaction> getTransaction(String hash) async
    test('test getTransaction', () async {
      // TODO
    });

    // List all components
    //
    //Future<BuiltList<String>> listComponents() async
    test('test listComponents', () async {
      // TODO
    });

    // List all packages
    //
    //Future<BuiltList<String>> listPackages() async
    test('test listPackages', () async {
      // TODO
    });

    // List all resources
    //
    //Future<BuiltList<String>> listResources() async
    test('test listResources', () async {
      // TODO
    });

    // Execute a signed transaction
    //
    //Future<Receipt> submitTransaction(Transaction transaction) async
    test('test submitTransaction', () async {
      // TODO
    });

  });
}
