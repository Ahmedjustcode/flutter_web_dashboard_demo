import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_view_model_event.dart';
part 'main_view_model_state.dart';

class MainViewModelBloc extends Bloc<MainViewModelEvent, MainViewModelState> {
  MainViewModelBloc() : super(MainViewModelInitial()) {
    on<MainViewModelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
