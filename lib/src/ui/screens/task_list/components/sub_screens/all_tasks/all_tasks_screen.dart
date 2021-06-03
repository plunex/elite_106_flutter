import 'package:flutter/material.dart';

import '../../sort_by_modal_sheet.dart';
import '../../task_card.dart';

class AllTasksScreen extends StatelessWidget {
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
            ),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Tasks',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.grid_view),
                    IconButton(
                      icon: Icon(Icons.sort),
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return SortByModalSheet();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0x40E5E5E5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: SafeArea(
              minimum: EdgeInsets.only(top: 10, left: 15, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Today - 03 June, 2021'),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF77ACF1),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                  TaskCard(
                    title: 'Product Meeting',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                  TaskCard(
                    title: 'Product Meeting',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                  TaskCard(
                    title: 'Send business proposal',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                  Container(
                    height: 20,
                  ),
                  Text('Tomorrow - 04 June, 2021'),
                  Container(
                    height: 20,
                  ),
                  TaskCard(
                    title: 'Product Meeting',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                  TaskCard(
                    title: 'Product Meeting',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                  TaskCard(
                    title: 'Send business proposal',
                    subTitle: 'App updates',
                    trailing: '10:30 AM',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
