// BottomNavigationBar Widget
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text(
          'Tab index yang aktif : $_selectedNavbar',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Beranda')),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), title: Text('Pesanan')),
          BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text('Inbox')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Akun')),
        ],
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: _selectedNavbar,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
