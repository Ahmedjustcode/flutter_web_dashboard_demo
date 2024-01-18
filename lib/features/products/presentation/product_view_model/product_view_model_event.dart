part of 'product_view_model_bloc.dart';

abstract class ProductViewModelEvent extends Equatable {
  const ProductViewModelEvent();
}

class  ProductViewModelGetProducts extends ProductViewModelEvent{

  final int skipProduct;
  final bool showLoader;

  const ProductViewModelGetProducts(this.showLoader, {required this.skipProduct});

  @override
  List<Object?> get props => [skipProduct,showLoader];
}
