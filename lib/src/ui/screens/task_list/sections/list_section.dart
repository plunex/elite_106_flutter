import 'package:elite_106/src/ui/screens/task_list/components/card_normal.dart';
import 'package:flutter/material.dart';

class ListSection extends StatefulWidget {
  const ListSection({Key? key}) : super(key: key);

  @override
  _ListSectionState createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardNormal(),
    );
  }
}
