import 'package:flutter/material.dart';
import 'package:lame/account.dart';
import 'package:lame/appBar.dart';
import 'package:lame/bttombar.dart';
import 'package:lame/feedpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01BDB2),
      appBar: Appbarr().appbar,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF01BDB2),
              ),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 158, 145, 145),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            // content of the drawer
            ListTile(
              title: (Text('Manage Account')),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Account()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          FeedPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
