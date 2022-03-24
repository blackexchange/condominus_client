import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './menu_item.dart';
import '../pages/pages.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(),
          MenuItem(
              text: 'Financeiro',
              icon: Icons.attach_money_outlined,
              onClicked: (() => Get.offNamed('/home'))),
          MenuItem(text: 'Unidades', icon: Icons.emoji_people_rounded),
          const SizedBox(height: 16),
          Divider(color: Colors.white70),
          const SizedBox(height: 16),
          MenuItem(text: 'Cadastros', icon: Icons.add_task_outlined),
          MenuItem(text: 'Condomínio', icon: Icons.business),
          MenuItem(
              text: 'Fornecedores', icon: Icons.precision_manufacturing_sharp),
          MenuItem(text: 'Pessoal', icon: Icons.people),
          Expanded(child: Container()),
          Column(
            children: <Widget>[
              _createFooterItem(
                  icon: Icons.event,
                  text: 'Settings',
                  onTap: () => Navigator.pushReplacementNamed(context, '/')),
              _createFooterItem(icon: Icons.event, text: 'Logout', onTap: () {})
            ],
          ),
        ],
      ),
    );
  }
}

Widget _createFooterItem(
    {IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      /* decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    'https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg'))), */
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Usuario",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => FinancePage()));
      break;
    default:
  }
}
