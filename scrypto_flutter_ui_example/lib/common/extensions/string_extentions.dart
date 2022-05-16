import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

extension KDA on String {
  /// Get Text Widget for the String
  VxTextBuilder get headline1 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline1!);
  VxTextBuilder get headline2 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline2!);
  VxTextBuilder get headline3 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline3!);

  VxTextBuilder get headline4 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline4!);
  VxTextBuilder get headline5 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline5!);
  VxTextBuilder get headline6 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.headline6!);
  VxTextBuilder get subtitle1 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.subtitle1!);
  VxTextBuilder get subtitle2 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.subtitle2!);

  VxTextBuilder get bodyText1 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.bodyText1!);
  VxTextBuilder get bodyText2 => VxTextBuilder(this)..textStyle(Get.theme.textTheme.bodyText2!);
  VxTextBuilder get overline => VxTextBuilder(this)..textStyle(Get.theme.textTheme.overline!);
  VxTextBuilder get button => VxTextBuilder(this)..textStyle(Get.theme.textTheme.button!);
  VxTextBuilder get caption => VxTextBuilder(this)..textStyle(Get.theme.textTheme.caption!);
}
