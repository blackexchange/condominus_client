import 'package:flutter/material.dart';
import '../../../../admin/components/components.dart';

import '../../../../../../main/constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final MenuTitle product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        "product.description",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
