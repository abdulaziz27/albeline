// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

part of 'models.dart';

// ProductsModel productsModelFromJson(String str) =>
//     ProductsModel.fromJson(json.decode(str));

// String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

// class ProductsModel {
//   ProductsModel({
//     this.products,
//     this.links,
//     this.meta,
//   });

//   List<Product> products;
//   Links links;
//   Meta meta;

//   factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
//         products: List<Product>.from(
//             json["products"].map((x) => Product.fromJson(x))),
//         links: Links.fromJson(json["links"]),
//         meta: Meta.fromJson(json["meta"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "products": List<dynamic>.from(products.map((x) => x.toJson())),
//         "links": links.toJson(),
//         "meta": meta.toJson(),
//       };
// }

// class Links {
//   Links({
//     this.first,
//     this.last,
//     this.prev,
//     this.next,
//   });

//   String first;
//   String last;
//   dynamic prev;
//   dynamic next;

//   factory Links.fromJson(Map<String, dynamic> json) => Links(
//         first: json["first"],
//         last: json["last"],
//         prev: json["prev"],
//         next: json["next"],
//       );

//   Map<String, dynamic> toJson() => {
//         "first": first,
//         "last": last,
//         "prev": prev,
//         "next": next,
//       };
// }

// class Meta {
//   Meta({
//     this.currentPage,
//     this.from,
//     this.lastPage,
//     this.path,
//     this.perPage,
//     this.to,
//     this.total,
//   });

//   int currentPage;
//   int from;
//   int lastPage;
//   String path;
//   int perPage;
//   int to;
//   int total;

//   factory Meta.fromJson(Map<String, dynamic> json) => Meta(
//         currentPage: json["current_page"],
//         from: json["from"],
//         lastPage: json["last_page"],
//         path: json["path"],
//         perPage: json["per_page"],
//         to: json["to"],
//         total: json["total"],
//       );

//   Map<String, dynamic> toJson() => {
//         "current_page": currentPage,
//         "from": from,
//         "last_page": lastPage,
//         "path": path,
//         "per_page": perPage,
//         "to": to,
//         "total": total,
//       };
// }

// class Product {
//   Product({
//     this.id,
//     this.name,
//     this.categories,
//     this.rate,
//     this.condition,
//     this.images,
//     this.sold,
//     this.price,
//     this.stock,
//     this.desc,
//   });

//   int id;
//   String name;
//   List<Category> categories;
//   double rate;
//   bool condition;
//   List<Images> images;
//   int sold;
//   int price;
//   int stock;
//   String desc;

//   factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         name: json["name"],
//         categories: List<Category>.from(
//             json["categories"].map((x) => Category.fromJson(x))),
//         rate: json["rate"].toDouble(),
//         condition: json["condition"],
//         images:
//             List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
//         sold: json["sold"],
//         price: json["price"],
//         stock: json["stock"],
//         desc: json["desc"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
//         "rate": rate,
//         "condition": condition,
//         "images": List<dynamic>.from(images.map((x) => x.toJson())),
//         "sold": sold,
//         "price": price,
//         "stock": stock,
//         "desc": desc,
//       };
// }

// class Category {
//   Category({
//     this.id,
//     this.name,
//     this.image,
//   });

//   int id;
//   String name;
//   String image;

//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         id: json["id"],
//         name: json["name"],
//         image: json['image']['id'].toString(),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//       };
// }

// class Images {
//   Images({
//     this.id,
//   });

//   int id;

//   factory Images.fromJson(Map<String, dynamic> json) => Images(
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//       };
// }
