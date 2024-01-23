
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_example/features/products/data/models/product_model.dart';
import 'package:hive/hive.dart';

part 'product_entity.g.dart';

@HiveType(typeId: 0)
class ProductEntity extends Equatable{

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? title;
  @HiveField(2)
  String? description;
  @HiveField(3)
  int? price;
  @HiveField(4)
  double? discountPercentage;
  @HiveField(5)
  double? rating;
  @HiveField(6)
  int? stock;
  @HiveField(7)
  String? brand;
  @HiveField(8)
  String? category;
  @HiveField(9)
  Uint8List? thumbnail;
  @HiveField(10)
  List<String>? images;

  ProductEntity({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });


  // Product toModel(){
  //   return Product(
  //     id: id,
  //     title: title,
  //     description: description,
  //     price: price,
  //     discountPercentage: discountPercentage,
  //     rating: rating,
  //     stock: stock,
  //     brand: brand,
  //     category: category,
  //     thumbnail: thumbnail.toString(),
  //     images: images
  //   );
  // }
  @override
  List<Object?> get props => [id,title,description,price,discountPercentage,rating,stock,brand,category,thumbnail,images];



}