import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Icon(
          //   Icons.chevron_left_sharp,
          //   size: 34,
          // ),
          SizedBox(
            width: 12,
          ),
          Text(
            "My List",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
