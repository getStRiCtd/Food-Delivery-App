import 'package:flutter/material.dart';
import 'user_profile/user_info/user_info.dart';
import 'user_profile/settings_list/settings_menu.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [UserInfo(), SizedBox(height: 30), Menu()],
      ),
    );
  }
}
