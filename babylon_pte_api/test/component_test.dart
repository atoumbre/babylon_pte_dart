import 'package:test/test.dart';
import 'package:babylon_pte_api/babylon_pte_api.dart';

// tests for Component
void main() {
  final instance = ComponentBuilder();
  // TODO add properties to the builder and call build()

  group(Component, () {
    // ComponentBlueprint blueprint
    test('to test the property `blueprint`', () async {
      // TODO
    });

    // A component is associated with a chain of access checks, each configured by a `AccessRules`.
    // BuiltList<AccessRules> accessChecks
    test('to test the property `accessChecks`', () async {
      // TODO
    });

    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // BuiltList<OwnedResource> ownedResources
    test('to test the property `ownedResources`', () async {
      // TODO
    });

  });
}
