import 'package:flutter/material.dart';
import 'user_profile/user_info/user_info.dart';
import 'user_profile/settings_list/settings_menu.dart';

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

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [UserInfo(), SizedBox(height: 30), Menu()],
        ),
      ),
      backgroundColor: Colors.grey[250],
      bottomNavigationBar: null,
    );
  }
}
