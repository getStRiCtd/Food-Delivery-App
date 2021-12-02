import "package:flutter/material.dart";
import 'package:pet/Widgets/user_profile/user_info/user_info.dart';
import 'package:pet/Widgets/user_profile/settings_list/settings_menu.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [UserInfo(), SizedBox(height: 30), Menu()],
      ),
    );
  }
}
