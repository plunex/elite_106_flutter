import 'package:elite_106/src/ui/common/custom_appbar_widget.dart';
import 'package:flutter/material.dart';

import 'list_section.dart';

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
        CustomAppBarWidget(shoBackButton: true, showOtherIcons: true, title: "My List"),
        Expanded(
            child: Container(
          child: ListSection(),
        ))
      ],
    );
  }

  onItemPressed(String title) {}
}
