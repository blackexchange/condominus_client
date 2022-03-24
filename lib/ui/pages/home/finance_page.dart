import 'package:flutter/material.dart';
import '../../components/components.dart';

class FinancePage extends StatelessWidget {
  const FinancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
          title: Text("Financial"),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32),
      ),
    );
  }
}
