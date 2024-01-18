import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../data/models/product_model.dart';

part 'product_view_model_event.dart';

part 'product_view_model_state.dart';

class ProductViewModelBloc extends Bloc<ProductViewModelEvent, ProductViewModelState> {
  ProductViewModelBloc() : super(const ProductViewModelInitial()) {
    on<ProductViewModelGetProducts>(_onGetProducts);
  }

  final List<Product> productList = [];
  int skippedProducts = 0;
  bool isFetching = false;

  void _onGetProducts(ProductViewModelGetProducts event, Emitter<ProductViewModelState> emit) async {
    if (!isFetching) {
      isFetching = true;
      if (event.showLoader) {
        emit(const ProductLoadingState());
      } else {
        // emit(const ProductPaginationLoadingState());
      }

      final newData = await fetchProduct();
      if(newData.isEmpty){
         skippedProducts = 0;
      }
      productList.addAll(newData);
      emit(ProductListLoadedState(
          productList: productList,
          isChangeList: state is ProductListLoadedState ? !(state as ProductListLoadedState).isChangeList : true));
      isFetching = false;
    }
    print(productList.length);
  }

  Future<List<Product>> fetchProduct() async {
    try {
      final http.Response response = await http.get(Uri.parse(
          'https://dummyjson.com/products?limit=20&skip=${skippedProducts}'));
      var data = jsonDecode(response.body)['products'] as List;
      if(data.isEmpty){
        skippedProducts = 0;
        final http.Response response = await http.get(Uri.parse(
            'https://dummyjson.com/products?limit=20&skip=$skippedProducts'));
         data = jsonDecode(response.body)['products'] as List;
      }
      skippedProducts +=20;
      return data.map<Product>((e) => Product.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
    return [];
  }
}
