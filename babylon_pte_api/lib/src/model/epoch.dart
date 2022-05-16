//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'epoch.g.dart';

/// Epoch
///
/// Properties:
/// * [epoch] 
abstract class Epoch implements Built<Epoch, EpochBuilder> {
    @BuiltValueField(wireName: r'epoch')
    int get epoch;

    Epoch._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(EpochBuilder b) => b;

    factory Epoch([void updates(EpochBuilder b)]) = _$Epoch;

    @BuiltValueSerializer(custom: true)
    static Serializer<Epoch> get serializer => _$EpochSerializer();
}

class _$EpochSerializer implements StructuredSerializer<Epoch> {
    @override
    final Iterable<Type> types = const [Epoch, _$Epoch];

    @override
    final String wireName = r'Epoch';

    @override
    Iterable<Object?> serialize(Serializers serializers, Epoch object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'epoch')
            ..add(serializers.serialize(object.epoch,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    Epoch deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EpochBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'epoch':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.epoch = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

