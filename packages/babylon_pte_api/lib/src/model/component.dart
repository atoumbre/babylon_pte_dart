//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:babylon_pte_api/src/model/access_rules.dart';
import 'package:babylon_pte_api/src/model/component_blueprint.dart';
import 'package:babylon_pte_api/src/model/owned_resource.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'component.g.dart';

/// Component
///
/// Properties:
/// * [blueprint] 
/// * [accessChecks] - A component is associated with a chain of access checks, each configured by a `AccessRules`.
/// * [state] 
/// * [ownedResources] 
abstract class Component implements Built<Component, ComponentBuilder> {
    @BuiltValueField(wireName: r'blueprint')
    ComponentBlueprint get blueprint;

    /// A component is associated with a chain of access checks, each configured by a `AccessRules`.
    @BuiltValueField(wireName: r'access_checks')
    BuiltList<AccessRules> get accessChecks;

    @BuiltValueField(wireName: r'state')
    String get state;

    @BuiltValueField(wireName: r'owned_resources')
    BuiltList<OwnedResource> get ownedResources;

    Component._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ComponentBuilder b) => b;

    factory Component([void updates(ComponentBuilder b)]) = _$Component;

    @BuiltValueSerializer(custom: true)
    static Serializer<Component> get serializer => _$ComponentSerializer();
}

class _$ComponentSerializer implements StructuredSerializer<Component> {
    @override
    final Iterable<Type> types = const [Component, _$Component];

    @override
    final String wireName = r'Component';

    @override
    Iterable<Object?> serialize(Serializers serializers, Component object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'blueprint')
            ..add(serializers.serialize(object.blueprint,
                specifiedType: const FullType(ComponentBlueprint)));
        result
            ..add(r'access_checks')
            ..add(serializers.serialize(object.accessChecks,
                specifiedType: const FullType(BuiltList, [FullType(AccessRules)])));
        result
            ..add(r'state')
            ..add(serializers.serialize(object.state,
                specifiedType: const FullType(String)));
        result
            ..add(r'owned_resources')
            ..add(serializers.serialize(object.ownedResources,
                specifiedType: const FullType(BuiltList, [FullType(OwnedResource)])));
        return result;
    }

    @override
    Component deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ComponentBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'blueprint':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ComponentBlueprint)) as ComponentBlueprint;
                    result.blueprint.replace(valueDes);
                    break;
                case r'access_checks':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AccessRules)])) as BuiltList<AccessRules>;
                    result.accessChecks.replace(valueDes);
                    break;
                case r'state':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.state = valueDes;
                    break;
                case r'owned_resources':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OwnedResource)])) as BuiltList<OwnedResource>;
                    result.ownedResources.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

