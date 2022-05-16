//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signature.g.dart';

/// Signature
///
/// Properties:
/// * [publicKey] 
/// * [signature] 
abstract class Signature implements Built<Signature, SignatureBuilder> {
    @BuiltValueField(wireName: r'public_key')
    String get publicKey;

    @BuiltValueField(wireName: r'signature')
    String get signature;

    Signature._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SignatureBuilder b) => b;

    factory Signature([void updates(SignatureBuilder b)]) = _$Signature;

    @BuiltValueSerializer(custom: true)
    static Serializer<Signature> get serializer => _$SignatureSerializer();
}

class _$SignatureSerializer implements StructuredSerializer<Signature> {
    @override
    final Iterable<Type> types = const [Signature, _$Signature];

    @override
    final String wireName = r'Signature';

    @override
    Iterable<Object?> serialize(Serializers serializers, Signature object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'public_key')
            ..add(serializers.serialize(object.publicKey,
                specifiedType: const FullType(String)));
        result
            ..add(r'signature')
            ..add(serializers.serialize(object.signature,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Signature deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignatureBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'public_key':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.publicKey = valueDes;
                    break;
                case r'signature':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.signature = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

