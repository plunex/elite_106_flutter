import 'package:elite_106/src/ui/common/custom_appbar_widget.dart';
import 'package:elite_106/src/ui/screens/home/components/card_item_widget.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    var cardWidth = screenWidth * 0.5;
    var cardHeight = screenHeight / 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarWidget(),
        SizedBox(
          height: 16,
        ),
        // CardItem(
        //   color: Colors.blueAccent,
        //   iconData: Icons.note_add_outlined,
        //   description: "All Tasks",
        //   taskCount: 0,
        //   onClick: onItemPressed,
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              childAspectRatio: (cardWidth / cardHeight),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: List.generate(4, (index) {
                return CardItem(
                  // cardWidth: cardWidth,
                  // cardHeight: cardHeight,
                  color: Colors.blueAccent,
                  iconData: Icons.note_add_outlined,
                  description: "All Tasks",
                  taskCount: 0,
                  onClick: onItemPressed,
                );
              }),
            ),
          ),
        )
      ],
    );
  }

  onItemPressed(String title) {}
}
