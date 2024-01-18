import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_view_model_event.dart';
part 'product_view_model_state.dart';

class ProductViewModelBloc extends Bloc<ProductViewModelEvent, ProductViewModelState> {
  ProductViewModelBloc() : super(ProductViewModelInitial()) {
    on<ProductViewModelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
