import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsListTile extends StatefulWidget {
  final Color iconBackgroundColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final bool showTrailing;

  const SettingsListTile({
    Key? key,
    required this.iconBackgroundColor,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.showTrailing,
  }) : super(key: key);

  @override
  _SettingsListTileState createState() => _SettingsListTileState();
}

class _SettingsListTileState extends State<SettingsListTile> {
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
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: widget.showTrailing
          ? CupertinoSwitch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value == false ? false : true;
                  print(switchValue);
                });
              },
            )
          : null,
    );
  }
}
