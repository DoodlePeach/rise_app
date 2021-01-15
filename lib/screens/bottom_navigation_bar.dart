import 'package:flutter/material.dart';
import './comparison_score.dart';
import '../widget/cus_gradient.dart';
import './my_home_page.dart';
import './my_profile.dart';
import 'self_score .dart';
class CusBottonNavigationBar extends StatefulWidget {
  @override
  _CusBottonNavigationBarState createState() => _CusBottonNavigationBarState();
}

class _CusBottonNavigationBarState extends State<CusBottonNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    ComparisonScore(),
    Profile(),
    SelfScore(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
           topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                 topRight: Radius.circular(15),
              ),
              gradient: gradient),
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            elevation: 0,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Call',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_outline,
                  size: 30,
                ),
                label: 'Camara',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: 'messager',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: 'PeopleAlt Outlined',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.white,
            selectedItemColor: Color(0xff007EF4),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
