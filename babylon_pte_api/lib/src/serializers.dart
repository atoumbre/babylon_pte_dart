//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:babylon_pte_api/src/date_serializer.dart';
import 'package:babylon_pte_api/src/model/date.dart';

import 'package:babylon_pte_api/src/model/access_rules.dart';
import 'package:babylon_pte_api/src/model/bad_request.dart';
import 'package:babylon_pte_api/src/model/component.dart';
import 'package:babylon_pte_api/src/model/component_blueprint.dart';
import 'package:babylon_pte_api/src/model/epoch.dart';
import 'package:babylon_pte_api/src/model/method_rule.dart';
import 'package:babylon_pte_api/src/model/non_fungible.dart';
import 'package:babylon_pte_api/src/model/nonce.dart';
import 'package:babylon_pte_api/src/model/owned_resource.dart';
import 'package:babylon_pte_api/src/model/receipt.dart';
import 'package:babylon_pte_api/src/model/resource.dart';
import 'package:babylon_pte_api/src/model/resource_metadata.dart';
import 'package:babylon_pte_api/src/model/signature.dart';
import 'package:babylon_pte_api/src/model/transaction.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccessRules,
  BadRequest,
  Component,
  ComponentBlueprint,
  Epoch,
  MethodRule,
  NonFungible,
  Nonce,
  OwnedResource,
  Receipt,
  Resource,
  ResourceMetadata,
  Signature,
  Transaction,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
