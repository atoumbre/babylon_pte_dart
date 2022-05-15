//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'receipt.g.dart';

/// Receipt
///
/// Properties:
/// * [transactionHash] 
/// * [status] 
/// * [outputs] 
/// * [logs] 
/// * [newPackages] 
/// * [newComponents] 
/// * [newResources] 
abstract class Receipt implements Built<Receipt, ReceiptBuilder> {
    @BuiltValueField(wireName: r'transaction_hash')
    String get transactionHash;

    @BuiltValueField(wireName: r'status')
    String get status;

    @BuiltValueField(wireName: r'outputs')
    BuiltList<String> get outputs;

    @BuiltValueField(wireName: r'logs')
    BuiltList<String> get logs;

    @BuiltValueField(wireName: r'new_packages')
    BuiltList<String> get newPackages;

    @BuiltValueField(wireName: r'new_components')
    BuiltList<String> get newComponents;

    @BuiltValueField(wireName: r'new_resources')
    BuiltList<String> get newResources;

    Receipt._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ReceiptBuilder b) => b;

    factory Receipt([void updates(ReceiptBuilder b)]) = _$Receipt;

    @BuiltValueSerializer(custom: true)
    static Serializer<Receipt> get serializer => _$ReceiptSerializer();
}

class _$ReceiptSerializer implements StructuredSerializer<Receipt> {
    @override
    final Iterable<Type> types = const [Receipt, _$Receipt];

    @override
    final String wireName = r'Receipt';

    @override
    Iterable<Object?> serialize(Serializers serializers, Receipt object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'transaction_hash')
            ..add(serializers.serialize(object.transactionHash,
                specifiedType: const FullType(String)));
        result
            ..add(r'status')
            ..add(serializers.serialize(object.status,
                specifiedType: const FullType(String)));
        result
            ..add(r'outputs')
            ..add(serializers.serialize(object.outputs,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'logs')
            ..add(serializers.serialize(object.logs,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'new_packages')
            ..add(serializers.serialize(object.newPackages,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'new_components')
            ..add(serializers.serialize(object.newComponents,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        result
            ..add(r'new_resources')
            ..add(serializers.serialize(object.newResources,
                specifiedType: const FullType(BuiltList, [FullType(String)])));
        return result;
    }

    @override
    Receipt deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ReceiptBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'transaction_hash':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.transactionHash = valueDes;
                    break;
                case r'status':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.status = valueDes;
                    break;
                case r'outputs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.outputs.replace(valueDes);
                    break;
                case r'logs':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.logs.replace(valueDes);
                    break;
                case r'new_packages':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.newPackages.replace(valueDes);
                    break;
                case r'new_components':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.newComponents.replace(valueDes);
                    break;
                case r'new_resources':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>;
                    result.newResources.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

