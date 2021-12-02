import 'package:flutter/material.dart';

class BotNavIcon {
  final IconData icon;
  final double size = 34;

  const BotNavIcon({required this.icon});
}

List<BotNavIcon> iconsRow = [
  BotNavIcon(icon: Icons.home),
  BotNavIcon(icon: Icons.monetization_on),
  BotNavIcon(icon: Icons.monetization_on),
  BotNavIcon(icon: Icons.gps_not_fixed_sharp),
  BotNavIcon(icon: Icons.more_horiz),
];

class BotNavigation extends StatefulWidget {
  const BotNavigation({Key? key}) : super(key: key);

  @override
  BotNavigationState createState() => BotNavigationState();
}

class BotNavigationState extends State<BotNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: iconsRow
            .map((iconData) => Icon(
                  iconData.icon,
                  size: iconData.size,
                ))
            .toList(),
      ),
    );
  }
}
