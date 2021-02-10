part of 'models.dart';

// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.products,
    this.links,
    this.meta,
  });

  List<Product> products;
  Links links;
  Meta meta;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "links": links.toJson(),
        "meta": meta.toJson(),
      };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String first;
  String last;
  dynamic prev;
  dynamic next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
      };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int currentPage;
  int from;
  int lastPage;
  String path;
  int perPage;
  int to;
  int total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}

class Product {
  Product({
    this.id,
    this.name,
    this.categories,
    this.rate,
    this.condition,
    this.images,
    this.sold,
    this.price,
    this.quantity,
    this.desc,
  });

  int id;
  String name;
  List<Category> categories;
  double rate;
  bool condition;
  List<Image> images;
  int sold;
  int price;
  dynamic quantity;
  String desc;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        rate: json["rate"].toDouble(),
        condition: json["condition"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        sold: json["sold"],
        price: json["price"],
        quantity: json["quantity"],
        desc: json["desc"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "rate": rate,
        "condition": condition,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "sold": sold,
        "price": price,
        "quantity": quantity,
        "desc": desc,
      };
}

class Category {
  Category({
    this.name,
  });

  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Image {
  Image({
    this.id,
  });

  int id;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}
