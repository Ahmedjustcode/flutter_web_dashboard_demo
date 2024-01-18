part of 'main_view_model_bloc.dart';

abstract class MainViewModelState extends Equatable {

  final int index;
  const MainViewModelState({required this.index});

  @override
  List<Object?> get props => [];
}

class MainViewModelInitial extends MainViewModelState {
  const MainViewModelInitial({required super.index});

  @override
  List<Object> get props => [super.index];
}

class MainViewModelDashBoardSelectedState extends MainViewModelState {
  const MainViewModelDashBoardSelectedState({required super.index});

  @override
  List<Object> get props => [super.index];
}

class MainViewModelProductSelectedState extends MainViewModelState {
  const MainViewModelProductSelectedState({required super.index});

  @override
  List<Object> get props => [super.index];
}