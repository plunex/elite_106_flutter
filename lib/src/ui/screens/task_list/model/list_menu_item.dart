import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMenuItem {
  final Color backgroundColor;
  final IconData icon;
  final String title;
  final String subTitle;

  ListMenuItem({
    required this.backgroundColor,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
}

List<ListMenuItem> menuItems = [
  ListMenuItem(
    backgroundColor: Color(0x6618A0FB),
    icon: CupertinoIcons.list_bullet,
    title: 'All Tasks',
    subTitle: '0 items',
  ),
  ListMenuItem(
    backgroundColor: Color(0xFF18A0FB),
    icon: CupertinoIcons.list_bullet,
    title: 'Personal',
    subTitle: '0 items',
  ),
  ListMenuItem(
    backgroundColor: Color(0xFF3EDBF0),
    icon: CupertinoIcons.briefcase,
    title: 'Work',
    subTitle: '0 items',
  ),
  ListMenuItem(
    backgroundColor: Color(0x663EDBF0),
    icon: Icons.add,
    title: 'Add New',
    subTitle: '',
  ),
];
