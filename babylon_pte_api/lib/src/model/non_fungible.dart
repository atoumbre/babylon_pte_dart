//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'non_fungible.g.dart';

/// NonFungible
///
/// Properties:
/// * [resourceAddress] 
/// * [immutableData] 
/// * [mutableData] 
abstract class NonFungible implements Built<NonFungible, NonFungibleBuilder> {
    @BuiltValueField(wireName: r'resource_address')
    String get resourceAddress;

    @BuiltValueField(wireName: r'immutable_data')
    String get immutableData;

    @BuiltValueField(wireName: r'mutable_data')
    String get mutableData;

    NonFungible._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NonFungibleBuilder b) => b;

    factory NonFungible([void updates(NonFungibleBuilder b)]) = _$NonFungible;

    @BuiltValueSerializer(custom: true)
    static Serializer<NonFungible> get serializer => _$NonFungibleSerializer();
}

class _$NonFungibleSerializer implements StructuredSerializer<NonFungible> {
    @override
    final Iterable<Type> types = const [NonFungible, _$NonFungible];

    @override
    final String wireName = r'NonFungible';

    @override
    Iterable<Object?> serialize(Serializers serializers, NonFungible object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'resource_address')
            ..add(serializers.serialize(object.resourceAddress,
                specifiedType: const FullType(String)));
        result
            ..add(r'immutable_data')
            ..add(serializers.serialize(object.immutableData,
                specifiedType: const FullType(String)));
        result
            ..add(r'mutable_data')
            ..add(serializers.serialize(object.mutableData,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    NonFungible deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NonFungibleBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'resource_address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.resourceAddress = valueDes;
                    break;
                case r'immutable_data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.immutableData = valueDes;
                    break;
                case r'mutable_data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.mutableData = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

