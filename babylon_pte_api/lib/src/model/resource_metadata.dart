//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_metadata.g.dart';

/// ResourceMetadata
///
/// Properties:
/// * [name] 
/// * [value] 
abstract class ResourceMetadata implements Built<ResourceMetadata, ResourceMetadataBuilder> {
    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'value')
    String get value;

    ResourceMetadata._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ResourceMetadataBuilder b) => b;

    factory ResourceMetadata([void updates(ResourceMetadataBuilder b)]) = _$ResourceMetadata;

    @BuiltValueSerializer(custom: true)
    static Serializer<ResourceMetadata> get serializer => _$ResourceMetadataSerializer();
}

class _$ResourceMetadataSerializer implements StructuredSerializer<ResourceMetadata> {
    @override
    final Iterable<Type> types = const [ResourceMetadata, _$ResourceMetadata];

    @override
    final String wireName = r'ResourceMetadata';

    @override
    Iterable<Object?> serialize(Serializers serializers, ResourceMetadata object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'value')
            ..add(serializers.serialize(object.value,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    ResourceMetadata deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ResourceMetadataBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'value':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.value = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

