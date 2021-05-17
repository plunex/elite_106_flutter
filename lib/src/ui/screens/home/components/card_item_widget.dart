import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String description;
  final int? taskCount;
  final Function onClick;

  const CardItem({
    Key? key,
    required this.color,
    required this.iconData,
    required this.description,
    this.taskCount,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    var cardWidth = screenWidth * 0.4;
    var cardHeight = screenHeight / 3;

    return Container(
      width: cardWidth,
      height: cardHeight,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 42,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 2),
          taskCount == null
              ? Container()
              : Text(
                  "$taskCount items",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
        ],
      ),
    );
  }
}
