import 'package:elite_106/src/ui/common/custom_appbar_widget.dart';
import 'package:elite_106/src/ui/screens/home/components/card_item_widget.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarWidget(),
        SizedBox(
          height: 16,
        ),
        CardItem(
          color: Colors.blueAccent,
          iconData: Icons.note_add_outlined,
          description: "All Tasks",
          taskCount: 0,
          onClick: onItemPressed,
        ),
      ],
    );
  }

  onItemPressed(String title) {}
}
