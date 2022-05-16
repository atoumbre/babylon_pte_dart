import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextMiddleEllipsis extends StatelessWidget {
  const TextMiddleEllipsis(
    this.text, {
    Key? key,
    this.limit = 3,
    this.min = 20,
  }) : super(key: key);

  final String text;
  final int limit;
  final int min;

  @override
  Widget build(BuildContext context) {
    return text.length < min
        ? Text(text)
        : Row(
            children: <Widget>[
              const Spacer(),
              Text(
                text.length > limit ? text.substring(0, text.length - limit) : text,
                maxLines: 1,
                textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                text.length > limit ? text.substring(text.length - limit) : '',
                maxLines: 1,
                textAlign: TextAlign.start,
              ),
              const Spacer(),
            ],
          );
  }
}
