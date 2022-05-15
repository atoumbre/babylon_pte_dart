//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'component_blueprint.g.dart';

/// ComponentBlueprint
///
/// Properties:
/// * [packageAddress] 
/// * [blueprintName] 
abstract class ComponentBlueprint implements Built<ComponentBlueprint, ComponentBlueprintBuilder> {
    @BuiltValueField(wireName: r'package_address')
    String get packageAddress;

    @BuiltValueField(wireName: r'blueprint_name')
    String get blueprintName;

    ComponentBlueprint._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ComponentBlueprintBuilder b) => b;

    factory ComponentBlueprint([void updates(ComponentBlueprintBuilder b)]) = _$ComponentBlueprint;

    @BuiltValueSerializer(custom: true)
    static Serializer<ComponentBlueprint> get serializer => _$ComponentBlueprintSerializer();
}

class _$ComponentBlueprintSerializer implements StructuredSerializer<ComponentBlueprint> {
    @override
    final Iterable<Type> types = const [ComponentBlueprint, _$ComponentBlueprint];

    @override
    final String wireName = r'ComponentBlueprint';

    @override
    Iterable<Object?> serialize(Serializers serializers, ComponentBlueprint object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'package_address')
            ..add(serializers.serialize(object.packageAddress,
                specifiedType: const FullType(String)));
        result
            ..add(r'blueprint_name')
            ..add(serializers.serialize(object.blueprintName,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ComponentBlueprint deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ComponentBlueprintBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'package_address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.packageAddress = valueDes;
                    break;
                case r'blueprint_name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.blueprintName = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

