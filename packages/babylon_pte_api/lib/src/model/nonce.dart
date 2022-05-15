//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nonce.g.dart';

/// Nonce
///
/// Properties:
/// * [value] 
abstract class Nonce implements Built<Nonce, NonceBuilder> {
    @BuiltValueField(wireName: r'value')
    int get value;

    Nonce._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(NonceBuilder b) => b;

    factory Nonce([void updates(NonceBuilder b)]) = _$Nonce;

    @BuiltValueSerializer(custom: true)
    static Serializer<Nonce> get serializer => _$NonceSerializer();
}

class _$NonceSerializer implements StructuredSerializer<Nonce> {
    @override
    final Iterable<Type> types = const [Nonce, _$Nonce];

    @override
    final String wireName = r'Nonce';

    @override
    Iterable<Object?> serialize(Serializers serializers, Nonce object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'value')
            ..add(serializers.serialize(object.value,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    Nonce deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = NonceBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'value':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.value = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

