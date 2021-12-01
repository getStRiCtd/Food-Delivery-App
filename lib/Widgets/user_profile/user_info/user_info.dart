import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: const [
          SizedBox(height: 25),
          Avatar(),
          SizedBox(height: 25),
          UserNameWidget(),
          SizedBox(height: 10),
          UserPhoneWidget(),
          SizedBox(height: 5),
          UserNickWidget(),
        ],
      ),
    );
  }
}

class UserNickWidget extends StatelessWidget {
  const UserNickWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@afwull',
      style: TextStyle(color: Colors.grey, fontSize: 16),
    );
  }
}

class UserPhoneWidget extends StatelessWidget {
  const UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+7(914)478-35-12',
      style: TextStyle(color: Colors.grey, fontSize: 16),
    );
  }
}

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Danil Demidenko',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Placeholder(),
      width: 100.0,
      height: 100.0,
    );
  }
}
