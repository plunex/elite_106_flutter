import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingTile extends StatelessWidget {
  final Color iconBackgroundColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;

  const MeetingTile({
    Key? key,
    required this.iconBackgroundColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 48,
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}
