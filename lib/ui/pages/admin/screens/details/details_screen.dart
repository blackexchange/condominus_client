import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../main/constants.dart';
import '../../../admin/components/components.dart';
import './components/body.dart';

class DetailsScreen extends StatelessWidget {
  final MenuTitle product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.ac_unit),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
