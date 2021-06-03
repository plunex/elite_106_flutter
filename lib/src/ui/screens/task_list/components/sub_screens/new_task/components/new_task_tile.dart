import 'package:flutter/material.dart';

class NewTaskTile extends StatefulWidget {
  final Color iconBackgroundColor;
  final IconData icon;
  final Color iconColor;
  final String title;

  const NewTaskTile({
    Key? key,
    required this.iconBackgroundColor,
    required this.icon,
    required this.iconColor,
    required this.title,
  }) : super(key: key);

  @override
  _SettingsListTileState createState() => _SettingsListTileState();
}

class _SettingsListTileState extends State<NewTaskTile> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 45,
        width: 48,
        decoration: BoxDecoration(
          color: widget.iconBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: Icon(
          widget.icon,
          color: widget.iconColor,
        ),
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
