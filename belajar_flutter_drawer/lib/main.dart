import 'package:flutter/material.dart';
import 'package:belajar_flutter_drawer/nav-drawer.dart';

void main() {
  runApp(MaterialApp(
      title: "Belajar Flutter Com", home: BelajarNavigationDrawer()));
}

class BelajarNavigationDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.account_circle),
            onPressed: () => _scaffoldKey.currentState.openDrawer),
        title: Text('Belajar Drawer Nav'),
      ),
      drawer: DrawerWidget(),
      endDrawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Belajar Navigation Drawer di Flutter',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
