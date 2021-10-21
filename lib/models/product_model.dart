import 'package:devstore/models/category_model.dart';
import 'package:devstore/models/gallery_model.dart';

class ProductModel {
  int? id;
  String? name;
  double? price;
  String? description;
  String? tag;
  CategoryModel? category;
  DateTime? createdAt;
  DateTime? updateAt;
  List<GalleryModel>? galleries;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.description,
    this.tag,
    this.category,
    this.createdAt,
    this.updateAt,
    this.galleries,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'tag': tag,
      'category': category?.toJson(),
      'galleries': galleries?.map((gallery) => gallery.toJson()).toList(),
      'createdAt': createdAt?.toString(),
      'updateAt': updateAt?.toString(),
    };
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    description = json['description'];
    tag = json['tag'];
    category = CategoryModel.fromJson(json['category']);
    galleries = json['galleries']
        .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
        .toList();
    createdAt = DateTime.parse(json['createdAt']);
    updateAt = DateTime.parse(json['updateAt']);
  }
}
