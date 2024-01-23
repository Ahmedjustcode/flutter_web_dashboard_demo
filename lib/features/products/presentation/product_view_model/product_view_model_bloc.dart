import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_example/features/products/domain/domain/product_entity/product_entity.dart';
import 'package:flutter_web_example/features/products/presentation/view/widgets/product_add_form.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../../../../core/app_colors.dart';
import '../../data/models/product_model.dart';

part 'product_view_model_event.dart';

part 'product_view_model_state.dart';

class ProductViewModelBloc extends Bloc<ProductViewModelEvent, ProductViewModelState> {
  ProductViewModelBloc() : super(const ProductViewModelInitial()) {
    on<ProductViewModelGetProducts>(_onGetProducts);
    on<ProductViewModelAddButtonTap>(_onAddButtonTap);
    on<ProductViewModelCreateNewProductTap>(_onCreateNewProductTap);
  }

  final List<Product> productList = [];
  final List<ProductEntity> productDraftLst = [];
  int skippedProducts = 0;
  bool isFetching = false;
  late Box<ProductEntity> productBox = Hive.box<ProductEntity>('product_box');

  void _onGetProducts(ProductViewModelGetProducts event, Emitter<ProductViewModelState> emit) async {

    // if(productBox.isOpen == false) {
      await Hive.openBox<ProductEntity>('product_box');
    // }
    if (!isFetching) {
      isFetching = true;
      if (event.showLoader) {
        emit(const ProductLoadingState());
      } else {
        // emit(const ProductPaginationLoadingState());
      }

      final newData = await _fetchProduct();
      if (newData.isEmpty) {
        skippedProducts = 0;
      }

      if(event.showLoader) {
        productDraftLst.addAll(productBox.values.toList());
      }
      productList.addAll(newData);
      emit(ProductListLoadedState(
          productList: productList,
          isChangeList: state is ProductListLoadedState ? !(state as ProductListLoadedState).isChangeList : true, productDraftList: productDraftLst));
      isFetching = false;
    }
 }

  void _onAddButtonTap(ProductViewModelAddButtonTap event, Emitter<ProductViewModelState> emit) async {
    showDialog(
        context: event.context,
        builder: (context) {
          return Dialog(
            backgroundColor: AppColors.c383854,
            insetPadding: const EdgeInsets.symmetric(horizontal: 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: const ProductAddForm(),
            ),
          );
        });
  }



  int _setId() {
    int temp = 0;
    for (var element in productBox.values) {
      if (element.id! >= temp) {
        temp = element.id!;
      }
    }
    return ++temp;
  }

  void _onCreateNewProductTap(ProductViewModelCreateNewProductTap event, Emitter<ProductViewModelState> emit) async{
    try {
      event.productEntity.id = _setId();
      final id = await productBox.put(event.productEntity.id,event.productEntity);
      print('product added successfully');
      Navigator.pop(event.context);
      productDraftLst.add(productBox.values.toList().singleWhere((element) => element.id == event.productEntity.id));
      print(productDraftLst);
      emit(ProductListLoadedState(
          productList: productList,
          isChangeList: state is ProductListLoadedState ? !(state as ProductListLoadedState).isChangeList : true, productDraftList: productDraftLst));
    } catch (e) {
      print('error found $e');
    }
  }

  Future<List<Product>> _fetchProduct() async {
    try {
      final http.Response response =
          await http.get(Uri.parse('https://dummyjson.com/products?limit=20&skip=$skippedProducts'));
      var data = jsonDecode(response.body)['products'] as List;
      if (data.isEmpty) {
        skippedProducts = 0;
        final http.Response response =
            await http.get(Uri.parse('https://dummyjson.com/products?limit=20&skip=$skippedProducts'));
        data = jsonDecode(response.body)['products'] as List;
      }
      skippedProducts += 20;
      return data.map<Product>((e) => Product.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
    return [];
  }
}
