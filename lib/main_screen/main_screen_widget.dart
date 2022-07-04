import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _SelectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Сообщества',
    ),
    Text(
      'Сообщения',
    ),
    Text(
      'Друзья',
    ),
     Text(
      'Мой профиль',
    ),
  ];

  void onSelectedTab(int index) {
    if (_SelectedTab == index) return;
    setState(() {
      _SelectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
        color: Color(0xFF4896CC)
   ), 
          elevation: 0,
        title: Text('Никнейм', style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: _widgetOptions[_SelectedTab]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Сообщества',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Сообщения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Друзья',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Мой профиль',
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
