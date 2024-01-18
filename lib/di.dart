import 'package:flutter_web_example/features/main/presentation/view_model/main_view_model_bloc.dart';
import 'package:flutter_web_example/features/products/presentation/product_view_model/product_view_model_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;


void registerInstances(){
  sl.registerLazySingleton<MainViewModelBloc>(() => MainViewModelBloc());
  sl.registerLazySingleton<ProductViewModelBloc>(() => ProductViewModelBloc());
}