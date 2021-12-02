import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          SettingsRow(label: 'Любимые рестораны'),
          SettingsRow(label: "Способы оплаты"),
          SettingsRow(label: 'История заказов')
        ],
      ),
    );
  }
}

class SettingsRow extends StatelessWidget {
  final String label;
  const SettingsRow({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 15),
          child: Text(label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.navigate_next, size: 30),
        )
      ],
    );
  }
}
