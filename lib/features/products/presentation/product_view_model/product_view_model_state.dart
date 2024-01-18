part of 'product_view_model_bloc.dart';

abstract class ProductViewModelState extends Equatable {
  const ProductViewModelState();
}

class ProductViewModelInitial extends ProductViewModelState {
  @override
  List<Object> get props => [];
}
