import 'package:elite_106/src/ui/screens/calendar/components/meeting_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
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
              'Calendar',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2010),
            lastDate: DateTime(2030),
            onDateChanged: (value) {
              print(value);
            },
          ),
          Container(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Product design meeting',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              MeetingTile(
                iconBackgroundColor: Color(0x1A18A0FB),
                icon: CupertinoIcons.clock,
                iconColor: Color(0xFF18A0FB),
                title: 'Saturday, May 25th',
                subTitle: '10:00AM - 11:00AM',
              ),
              MeetingTile(
                iconBackgroundColor: Color(0x1A3EDBF0),
                icon: CupertinoIcons.clock,
                iconColor: Color(0xFF3EDBF0),
                title: 'Priority',
                subTitle: 'Very high',
              ),
              MeetingTile(
                iconBackgroundColor: Color(0x1A18A0FB),
                icon: CupertinoIcons.eye,
                iconColor: Color(0xFF18A0FB),
                title: 'Overview',
                subTitle: 'Lorem ipsum dolor sit amet',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
