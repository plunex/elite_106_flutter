import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/new_task_tile.dart';

class NewTaskScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Task',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                // color: Colors.red,
                child: TextField(
                  minLines: 40,
                  maxLines: 41,
                  decoration:
                      InputDecoration(hintText: 'What are you planning?'),
                ),
              ),
            ),
            Container(
              height: 30,
            ),
            NewTaskTile(
              iconBackgroundColor: Color(0x1A18A0FB),
              icon: CupertinoIcons.clock,
              iconColor: Color(0xFF18A0FB),
              title: 'May 28th, 10:30 AM',
            ),
            NewTaskTile(
              iconBackgroundColor: Color(0x1A18A0FB),
              icon: Icons.note_add,
              iconColor: Color(0xFF18A0FB),
              title: 'Add note',
            ),
            NewTaskTile(
              iconBackgroundColor: Color(0x1A18A0FB),
              icon: Icons.category,
              iconColor: Color(0xFF18A0FB),
              title: 'Category',
            ),
            Container(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 52,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF18A0FB)),
                  ),
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
