import "package:flutter/material.dart";
import 'package:pet/Screens/settings_screen_widget.dart';
import 'Screens/main_screen_widget.dart';
import 'package:pet/Widgets/bootomNavigation/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> widgets = [
    HomePage(),
    Text('asd'),
    Text('data'),
    SettingsPage()
  ];

  static const List<String> appBarTitle = [
    'Главная',
    'Корзина',
    'Ближайшин рестораны',
    'Настройки',
  ];

  void onSelectTab(int index) {
    setState(() {
      if (_selectedIndex == index) return;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: Text(
        appBarTitle[_selectedIndex],
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      foregroundColor: Colors.black,
      backgroundColor: Colors.black,
      elevation: 0,
    );

    var bottomBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      iconSize: 35,
      items: iconsRow
          .map((cur) =>
              BottomNavigationBarItem(icon: cur.icon, label: cur.label))
          .toList(),
      onTap: onSelectTab,
      currentIndex: _selectedIndex,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        bottomNavigationBar: bottomBar,
        body: widgets[_selectedIndex],
      ),
    );
  }
}
