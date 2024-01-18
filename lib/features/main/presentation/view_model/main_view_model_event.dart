part of 'main_view_model_bloc.dart';

abstract class MainViewModelEvent extends Equatable {
  const MainViewModelEvent();
}

class MainViewModeTabChangeEvent extends MainViewModelEvent {
  final int index;

  const MainViewModeTabChangeEvent({required this.index});

  @override
  List<Object?> get props => [index];
}
