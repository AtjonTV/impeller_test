import 'package:flutter/material.dart';

class ScaffoldBottomNavTabItem extends BottomNavigationBarItem {
  ScaffoldBottomNavTabItem({
    required super.icon,
    required this.initialLocation,
    super.label,
    super.backgroundColor = Colors.white
  });

  final String initialLocation;
}