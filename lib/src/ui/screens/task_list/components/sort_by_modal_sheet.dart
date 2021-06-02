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
                      padding:
                          const EdgeInsets.only(top: 50.0, left: 20, right: 20),
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
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SortByTile(
                                  text: 'Name',
                                ),
                                SortByTile(
                                  text: 'Time',
                                ),
                                SortByTile(
                                  text: 'Date',
                                ),
                                SortByTile(
                                  text: 'Last modified',
                                ),
                              ],
                            ),
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

class SortByTile extends StatefulWidget {
  final String text;
  const SortByTile({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  _SortByTileState createState() => _SortByTileState();
}

class _SortByTileState extends State<SortByTile> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = selected ? false : true;
                  });
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xFF3EDBF0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                        Icons.circle,
                        size: 20,
                        color: selected ? Color(0xFF3EDBF0) : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.8,
          )
        ],
      ),
    );
  }
}
