part of 'product_view_model_bloc.dart';

abstract class ProductViewModelState extends Equatable {
  const ProductViewModelState();

}

class ProductViewModelInitial extends ProductViewModelState {



  const ProductViewModelInitial();
  @override
  List<Object> get props => [];
}

class ProductLoadingState extends ProductViewModelState{

  const ProductLoadingState();

  @override
  List<Object> get props => [];
}


class ProductListLoadedState extends ProductViewModelState{

  final List<Product> productList;
  final bool isChangeList;


  const ProductListLoadedState({required this.productList,this.isChangeList = true});

  @override
  List<Object> get props => [productList,isChangeList];
}

class ProductPaginationLoadingState extends ProductViewModelState{

  // final List<Product> productList;

  const ProductPaginationLoadingState();

  @override
  List<Object> get props => [];
}