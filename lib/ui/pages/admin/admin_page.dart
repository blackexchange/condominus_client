import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../main/constants.dart';
import './screens/home/components/body.dart';

import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/mixins.dart';
import './components/components.dart';



class AdminPage extends StatefulWidget {
  final SurveysPresenter presenter;

  AdminPage(this.presenter);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.settings),
        onPressed: () {},
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
        //SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
