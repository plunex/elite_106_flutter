import 'package:flutter/material.dart';

class ListMenuCard extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final String title;
  final String subTitle;
  const ListMenuCard({
    Key? key,
    required this.backgroundColor,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 51,
            color: Colors.white,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
