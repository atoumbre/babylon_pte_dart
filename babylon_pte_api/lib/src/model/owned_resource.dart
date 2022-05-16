//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'owned_resource.g.dart';

/// OwnedResource
///
/// Properties:
/// * [amount] 
/// * [resourceAddress] 
/// * [name] 
/// * [symbol] 
/// * [nonFungibleIds] 
abstract class OwnedResource implements Built<OwnedResource, OwnedResourceBuilder> {
    @BuiltValueField(wireName: r'amount')
    String get amount;

    @BuiltValueField(wireName: r'resource_address')
    String get resourceAddress;

    @BuiltValueField(wireName: r'name')
    String get name;

    @BuiltValueField(wireName: r'symbol')
    String get symbol;

    @BuiltValueField(wireName: r'non_fungible_ids')
    BuiltList<String>? get nonFungibleIds;

    OwnedResource._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OwnedResourceBuilder b) => b;

    factory OwnedResource([void updates(OwnedResourceBuilder b)]) = _$OwnedResource;

    @BuiltValueSerializer(custom: true)
    static Serializer<OwnedResource> get serializer => _$OwnedResourceSerializer();
}

class _$OwnedResourceSerializer implements StructuredSerializer<OwnedResource> {
    @override
    final Iterable<Type> types = const [OwnedResource, _$OwnedResource];

    @override
    final String wireName = r'OwnedResource';

    @override
    Iterable<Object?> serialize(Serializers serializers, OwnedResource object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'amount')
            ..add(serializers.serialize(object.amount,
                specifiedType: const FullType(String)));
        result
            ..add(r'resource_address')
            ..add(serializers.serialize(object.resourceAddress,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'symbol')
            ..add(serializers.serialize(object.symbol,
                specifiedType: const FullType(String)));
        if (object.nonFungibleIds != null) {
            result
                ..add(r'non_fungible_ids')
                ..add(serializers.serialize(object.nonFungibleIds,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
        }
        return result;
    }

    @override
    OwnedResource deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OwnedResourceBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'amount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.amount = valueDes;
                    break;
                case r'resource_address':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.resourceAddress = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'symbol':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.symbol = valueDes;
                    break;
                case r'non_fungible_ids':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.nonFungibleIds.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

