//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:babylon_pte_api/src/model/nonce.dart';
import 'package:built_collection/built_collection.dart';
import 'package:babylon_pte_api/src/model/signature.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction.g.dart';

/// Transaction
///
/// Properties:
/// * [manifest] 
/// * [nonce] 
/// * [signatures] 
abstract class Transaction implements Built<Transaction, TransactionBuilder> {
    @BuiltValueField(wireName: r'manifest')
    String get manifest;

    @BuiltValueField(wireName: r'nonce')
    Nonce get nonce;

    @BuiltValueField(wireName: r'signatures')
    BuiltList<Signature> get signatures;

    Transaction._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionBuilder b) => b;

    factory Transaction([void updates(TransactionBuilder b)]) = _$Transaction;

    @BuiltValueSerializer(custom: true)
    static Serializer<Transaction> get serializer => _$TransactionSerializer();
}

class _$TransactionSerializer implements StructuredSerializer<Transaction> {
    @override
    final Iterable<Type> types = const [Transaction, _$Transaction];

    @override
    final String wireName = r'Transaction';

    @override
    Iterable<Object?> serialize(Serializers serializers, Transaction object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'manifest')
            ..add(serializers.serialize(object.manifest,
                specifiedType: const FullType(String)));
        result
            ..add(r'nonce')
            ..add(serializers.serialize(object.nonce,
                specifiedType: const FullType(Nonce)));
        result
            ..add(r'signatures')
            ..add(serializers.serialize(object.signatures,
                specifiedType: const FullType(BuiltList, [FullType(Signature)])));
        return result;
    }

    @override
    Transaction deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'manifest':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.manifest = valueDes;
                    break;
                case r'nonce':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Nonce)) as Nonce;
                    result.nonce.replace(valueDes);
                    break;
                case r'signatures':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Signature)])) as BuiltList<Signature>;
                    result.signatures.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

