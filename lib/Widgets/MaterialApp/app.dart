import 'package:flutter/material.dart';
import 'package:pet/Widgets/user_profile.dart';
import 'package:pet/Widgets/bootomNavigation/bottom_navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text(
        'Настройки',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      foregroundColor: Colors.black,
      backgroundColor: Colors.black,
      elevation: 0,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: appBar,
        body: UserProfile(),
        backgroundColor: Colors.grey[250],
        bottomNavigationBar: BotNavigation(),
      ),
    );
  }
}
