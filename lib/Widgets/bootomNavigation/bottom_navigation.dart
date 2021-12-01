import 'package:flutter/material.dart';

class BotNavigation extends StatefulWidget {
  BotNavigation({Key? key}) : super(key: key);

  @override
  BotNavigationState createState() => BotNavigationState();
}

class BotNavigationState extends State<BotNavigation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.home),
        Icon(Icons.monetization_on),
        Icon(Icons.shopping_cart_outlined),
        Icon(Icons.gps_not_fixed_sharp),
        Icon(Icons.more_horiz),
      ],
    );
  }
}
