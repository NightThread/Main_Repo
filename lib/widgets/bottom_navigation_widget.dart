import 'package:flutter/material.dart';

final bottomnavigation = BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white,
  backgroundColor: Colors.grey.withValues(alpha: 0.1),
  items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.games_outlined),
    label: 'Грати',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.rocket_launch_rounded,),
    label: 'Новини',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopify_rounded),
    label: 'PS Store',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.line_style_rounded),
    label: 'Бібліотека ігор',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_rounded),
    label: 'Пошук',
  ),
  ],
  );