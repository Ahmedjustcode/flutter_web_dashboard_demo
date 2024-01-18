part of 'main_view_model_bloc.dart';

abstract class MainViewModelState extends Equatable {
  const MainViewModelState();
}

class MainViewModelInitial extends MainViewModelState {
  @override
  List<Object> get props => [];
}
