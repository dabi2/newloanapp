import 'package:flutter/material.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  final void Function(int) onItemTapped;
  final int selectedIndex;

  const BottomNavigationBarCustom({
    Key? key,
    required this.onItemTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Loan',
          icon: Icon(Icons.monetization_on_outlined),
        ),
        BottomNavigationBarItem(
          
          label: 'Profile',
          icon: Icon(Icons.person),
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.black,
      iconSize: 40,
    );
  }
}
 