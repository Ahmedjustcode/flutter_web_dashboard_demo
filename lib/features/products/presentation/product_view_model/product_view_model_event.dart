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

class  ProductViewModelAddButtonTap extends ProductViewModelEvent{

  final BuildContext context;

  const ProductViewModelAddButtonTap({required this.context});

  @override
  List<Object?> get props => [context];
}

class  ProductViewModelCreateNewProductTap extends ProductViewModelEvent{

  final BuildContext context;
  final ProductEntity productEntity;

  const ProductViewModelCreateNewProductTap({required this.context,required this.productEntity});

  @override
  List<Object?> get props => [context,productEntity];
}