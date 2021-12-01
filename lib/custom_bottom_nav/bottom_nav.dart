import 'package:devstore/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(value) {
    print(value);
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: BottomNavigationBar(
          backgroundColor: secondaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: black54,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(Icons.home, color: Colors.white),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.chat, color: Colors.white),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Icon(Icons.favorite, color: Colors.white),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: Icon(Icons.person, color: Colors.white),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
