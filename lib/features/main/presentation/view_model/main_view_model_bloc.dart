import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_view_model_event.dart';

part 'main_view_model_state.dart';

class MainViewModelBloc extends Bloc<MainViewModelEvent, MainViewModelState> {
  MainViewModelBloc() : super(const MainViewModelDashBoardSelectedState(index: 0)) {
    on<MainViewModeTabChangeEvent>(_onMainViewModeTabChange);
  }

  void _onMainViewModeTabChange(MainViewModeTabChangeEvent event, Emitter<MainViewModelState> emit) {
    if (event.index == 0) {
      emit(const MainViewModelDashBoardSelectedState(index: 0));
    } else if (event.index == 1) {
      emit(const MainViewModelProductSelectedState(index: 1));
    }
  }
}
