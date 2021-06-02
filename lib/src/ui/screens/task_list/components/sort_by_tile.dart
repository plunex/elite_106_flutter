import 'package:elite_106/cubit/sort_tile/sort_tile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SortByTile extends StatelessWidget {
  final String text;

  const SortByTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SortTileCubit>(
      create: (context) => SortTileCubit(),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                BlocBuilder<SortTileCubit, SortTileState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   selected = selected ? false : true;
                        // });
                        BlocProvider.of<SortTileCubit>(context).changeSelect();
                        print(BlocProvider.of<SortTileCubit>(context)
                            .state
                            .selected);
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
                              color: BlocProvider.of<SortTileCubit>(context)
                                      .state
                                      .selected
                                  ? Color(0xFF3EDBF0)
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Divider(
              thickness: 0.8,
            )
          ],
        ),
      ),
    );
  }
}
