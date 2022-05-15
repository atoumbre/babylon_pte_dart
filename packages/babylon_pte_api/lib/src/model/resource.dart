//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:babylon_pte_api/src/model/resource_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource.g.dart';

/// Resource
///
/// Properties:
/// * [resourceType] 
/// * [divisibility] 
/// * [metadata] 
/// * [totalSupply] 
abstract class Resource implements Built<Resource, ResourceBuilder> {
    @BuiltValueField(wireName: r'resource_type')
    String get resourceType;

    @BuiltValueField(wireName: r'divisibility')
    int get divisibility;

    @BuiltValueField(wireName: r'metadata')
    BuiltList<ResourceMetadata> get metadata;

    @BuiltValueField(wireName: r'total_supply')
    String get totalSupply;

    Resource._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ResourceBuilder b) => b;

    factory Resource([void updates(ResourceBuilder b)]) = _$Resource;

    @BuiltValueSerializer(custom: true)
    static Serializer<Resource> get serializer => _$ResourceSerializer();
}

class _$ResourceSerializer implements StructuredSerializer<Resource> {
    @override
    final Iterable<Type> types = const [Resource, _$Resource];

    @override
    final String wireName = r'Resource';

    @override
    Iterable<Object?> serialize(Serializers serializers, Resource object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'resource_type')
            ..add(serializers.serialize(object.resourceType,
                specifiedType: const FullType(String)));
        result
            ..add(r'divisibility')
            ..add(serializers.serialize(object.divisibility,
                specifiedType: const FullType(int)));
        result
            ..add(r'metadata')
            ..add(serializers.serialize(object.metadata,
                specifiedType: const FullType(BuiltList, [FullType(ResourceMetadata)])));
        result
            ..add(r'total_supply')
            ..add(serializers.serialize(object.totalSupply,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Resource deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResourceBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'resource_type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.resourceType = valueDes;
                    break;
                case r'divisibility':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.divisibility = valueDes;
                    break;
                case r'metadata':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(ResourceMetadata)])) as BuiltList<ResourceMetadata>;
                    result.metadata.replace(valueDes);
                    break;
                case r'total_supply':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.totalSupply = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

