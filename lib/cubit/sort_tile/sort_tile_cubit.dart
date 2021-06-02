import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sort_tile_state.dart';

class SortTileCubit extends Cubit<SortTileState> {
  SortTileCubit() : super(SortTileState(selected: true));

  void changeSelect() {
    emit(SortTileState(selected: state.selected ? false : true));
  }
}
