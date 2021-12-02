import 'package:flutter/material.dart';

class BotNavIcon {
  final Icon icon;
  final String label;

  const BotNavIcon({required this.icon, required this.label}) : super();
}

List<BotNavIcon> iconsRow = [
  BotNavIcon(icon: Icon(Icons.home), label: 'Начало'),
  BotNavIcon(icon: Icon(Icons.monetization_on), label: 'Заказ'),
  BotNavIcon(icon: Icon(Icons.gps_not_fixed_sharp), label: "Карта"),
  BotNavIcon(icon: Icon(Icons.more_horiz), label: "Ещё"),
];


