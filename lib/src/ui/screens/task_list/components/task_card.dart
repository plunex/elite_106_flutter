import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String trailing;
  const TaskCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                subTitle,
                style: TextStyle(
                  color: Color(0xCC000000),
                ),
              ),
              trailing: Text(
                trailing,
                style: TextStyle(
                  color: Color(0xFF18A0FB),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
