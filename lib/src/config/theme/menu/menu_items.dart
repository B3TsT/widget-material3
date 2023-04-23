import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Targetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
];
