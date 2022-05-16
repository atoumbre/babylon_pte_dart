// ignore_for_file: file_names

import 'package:file_picker/file_picker.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:jdenticon_dart/jdenticon_dart.dart';
import 'package:scrypto_wallet/common/controllers/AppController.dart';
import 'package:scrypto_wallet/common/extensions/string_extentions.dart';

class PackageViewController extends GetxController {
  final lastPickResult = Rxn<PlatformFile>();

  String getGeneratedIcon(String input) {
    return Jdenticon.toSvg(input);
  }

  selectPackageWASM() async {
    var paths = (await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: false,
      onFileLoading: (FilePickerStatus status) => print(status),
      allowedExtensions: ['wasm'],
    ));

    lastPickResult(paths?.files[0]);
  }

  publishCurrentWASM() {}
}

class PackageView extends StatelessWidget {
  const PackageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
        init: PackageViewController(),
        builder: (PackageViewController controller) {
          print(AppController.find.accountAddress());
          return Column(
            children: [
              // if(controller.st)
              Center(
                child: ElevatedButton(
                  onPressed: () => controller.selectPackageWASM(),
                  child: 'child'.bodyText1.make(),
                ),
              ),
              controller.lastPickResult()?.name.bodyText1.make() ?? const Text(''),
            ],
          );
        });
  }
}
