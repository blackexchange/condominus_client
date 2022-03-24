import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/mixins.dart';
import './components/components.dart';
import './home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;

  HomePage(this.presenter);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with LoadingManager, NavigationManager, SessionManager, RouteAware {
  @override
  Widget build(BuildContext context) {
    //handleLoading(context, widget.presenter.isLoadingStream);
    //handleSessionExpired(widget.presenter.isSessionExpiredStream);
    //handleNavigation(widget.presenter.navigateToStream);

    // widget.presenter.loadData();

    Get.find<RouteObserver>()
        .subscribe(this, ModalRoute.of(context) as PageRoute);
    return Scaffold(
      appBar: AppBar(title: Text(R.string.home)),
      body: const Center(
        child: Text('My Page!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_sharp),
              label: 'Lançamentos',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Ocorrências',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Agenda',
          ),
        ],
        currentIndex: 0,
        backgroundColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        iconSize: 30,
        selectedFontSize: 16,
        unselectedFontSize: 14,

        unselectedItemColor: Colors.amber,
        // onTap: (index)=>setState(()=>currentIndex = index),
      ),
      drawer: NavigationDrawer(),
    );
  }

  @override
  void didPopNext() {
    widget.presenter.loadData();
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
  }
}
