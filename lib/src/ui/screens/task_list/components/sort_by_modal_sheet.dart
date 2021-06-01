import 'package:flutter/material.dart';

class SortByModalSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2.3,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: DraggableScrollableSheet(
                  expand: true,
                  initialChildSize: 0.98,
                  maxChildSize: 1,
                  minChildSize: 0.97,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        children: [
                          Text(
                            'Sort by',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Name',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(Icons.circle),
                          ),
                          Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            title: Text(
                              'Time',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(Icons.circle),
                          ),
                          Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),
                          ListTile(
                            title: Text(
                              'Date',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            trailing: Icon(Icons.circle),
                          ),
                          Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          // top: 90,
          left: 159,
          child: CircleAvatar(
            radius: 55,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF18A0FB),
              child: Icon(
                Icons.sort_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
