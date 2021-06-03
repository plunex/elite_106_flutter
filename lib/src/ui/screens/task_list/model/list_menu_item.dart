import 'package:elite_106/src/ui/screens/task_list/components/sub_screens/add_new/add_new_screen.dart';
import 'package:elite_106/src/ui/screens/task_list/components/sub_screens/all_tasks/all_tasks_screen.dart';
import 'package:elite_106/src/ui/screens/task_list/components/sub_screens/personal/personal_screen.dart';
import 'package:elite_106/src/ui/screens/task_list/components/sub_screens/work/work_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMenuItem {
  final Widget nextPage;
  final Color backgroundColor;
  final IconData icon;
  final String title;
  final String subTitle;

  ListMenuItem({
    required this.nextPage,
    required this.backgroundColor,
    required this.icon,
    required this.title,
    required this.subTitle,
  });
}

List<ListMenuItem> menuItems = [
  ListMenuItem(
    nextPage: AllTasksScreen(),
    backgroundColor: Color(0x6618A0FB),
    icon: CupertinoIcons.list_bullet,
    title: 'All Tasks',
    subTitle: '0 items',
  ),
  ListMenuItem(
    nextPage: PersonalScreen(),
    backgroundColor: Color(0xFF18A0FB),
    icon: CupertinoIcons.list_bullet,
    title: 'Personal',
    subTitle: '0 items',
  ),
  ListMenuItem(
    nextPage: WorkScreen(),
    backgroundColor: Color(0xFF3EDBF0),
    icon: CupertinoIcons.briefcase,
    title: 'Work',
    subTitle: '0 items',
  ),
  ListMenuItem(
    nextPage: AddNewScreen(),
    backgroundColor: Color(0x663EDBF0),
    icon: Icons.add,
    title: 'Add New',
    subTitle: '',
  ),
];
