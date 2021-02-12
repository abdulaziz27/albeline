part of 'models.dart';

// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

// CategoryModel categoryModelFromJson(String str) =>
//     CategoryModel.fromJson(json.decode(str));

// String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

// class CategoryModel {
//   CategoryModel({
//     this.error,
//     this.categories,
//   });

//   bool error;
//   List<Category> categories;

//   factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
//         error: json["error"],
//         categories: List<Category>.from(
//             json["categories"].map((x) => Category.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "error": error,
//         "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
//       };
// }

// class Category {
//   Category({
//     this.name,
//     this.image,
//   });

//   String name;
//   Image image;

//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         name: json["name"],
//         image: Image.fromJson(json["image"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "image": image.toJson(),
//       };
// }

// class Image {
//   Image({
//     this.id,
//   });

//   int id;

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//       };
// }
