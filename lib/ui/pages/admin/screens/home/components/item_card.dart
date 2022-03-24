import 'package:flutter/material.dart';
import '../../../../admin/components/components.dart';

import '../../../../../../main/constants.dart';

class ItemCard extends StatelessWidget {
  final MenuTitle menu;
  final Function press;
  const ItemCard({
    Key? key,
    required this.menu,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              decoration: BoxDecoration(
                color: menu.color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: "${menu.id}",
                    child: menu.image,
                  ),
                  Container(
                    height: 8,
                  ),
                  Text(
                    menu.title,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
