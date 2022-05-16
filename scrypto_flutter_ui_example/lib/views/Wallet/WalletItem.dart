// ignore_for_file: file_names

import 'package:babylon_pte_api/babylon_pte_api.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scrypto_wallet/views/Wallet/Wallet.dart';
import 'package:velocity_x/velocity_x.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({
    Key? key,
    required this.resource,
  }) : super(key: key);

  final OwnedResource resource;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const SizedBox(width: 200),
        Expanded(
          child: Neumorphic(
            style: const NeumorphicStyle(
              shape: NeumorphicShape.flat,
              // boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              depth: 4,
              lightSource: LightSource.topLeft,
              color: Colors.white,
            ),
            child: ListTile(
              leading: SvgPicture.string(
                WalletViewController.find.getGeneratedIcon(resource.resourceAddress),
                fit: BoxFit.fill,
                height: 48,
                width: 48,
              ),
              title: Text('${resource.amount} ${resource.symbol}'),
              subtitle: Text(resource.name),
              // trailing: Text(resource.amount),
            ),
          ).p16(),
        ),
        // const SizedBox(width: 200),
      ],
    );
  }
}
