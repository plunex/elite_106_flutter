import 'package:elite_106/src/ui/screens/settings/components/settings_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey[700],
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Flexible(
            child: ListView(
              children: [
                SettingsListTile(
                  iconBackgroundColor: Color(0x1A3EDBF0),
                  icon: Icons.wb_sunny_outlined,
                  iconColor: Color(0xFF3EDBF0),
                  title: 'Dark Mode',
                  showTrailing: true,
                ),
                SettingsListTile(
                  iconBackgroundColor: Color(0x1A18A0FB),
                  icon: Icons.feedback_outlined,
                  iconColor: Color(0xFF18A0FB),
                  title: 'About to do list',
                  showTrailing: false,
                ),
                SettingsListTile(
                  iconBackgroundColor: Color(0x1A18A0FB),
                  icon: Icons.question_answer_outlined,
                  iconColor: Color(0xFF18A0FB),
                  title: 'FAQ',
                  showTrailing: false,
                ),
                SettingsListTile(
                  iconBackgroundColor: Color(0x1A3EDBF0),
                  icon: Icons.help_outline,
                  iconColor: Color(0xFF3EDBF0),
                  title: 'About to do list',
                  showTrailing: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
