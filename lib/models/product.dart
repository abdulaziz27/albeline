part of 'models.dart';

class Product {
  String id;
  String name;
  String images;
  String price;
  List<Category> categories;

  Product({this.id, this.name, this.images, this.price, this.categories});

  factory Product.createProduct(Map<String, dynamic> object) {
    return Product(
      id: object['id'].toString(),
      name: object['name'],
      images: object['images'][0]['id'].toString(),
      price: object['price'].toString(),
    );
  }

  factory Product.createByCategory(Map<String, dynamic> object) {
    return Product(
      id: object['id'].toString(),
      name: object['name'],
      images: object['images'][0]['id'].toString(),
      categories: object['categories'],
      price: object['price'].toString(),
    );
  }

  static Future<List<Product>> getProducts() async {
    String baseUrl = 'https://albeline-backend.herokuapp.com/api/products';

    var productResult = await http.get(baseUrl);
    var jsonObj = json.decode(productResult.body);
    print('================== PRODUCT LIST ======================');
    print(jsonObj);
    print('================== PRODUCT LIST ======================');

    List<dynamic> listProduct = (jsonObj as Map<String, dynamic>)['products'];

    List<Product> products = [];
    for (int i = 0; i < listProduct.length; i++)
      products.add(Product.createProduct(listProduct[i]));

    print('================== PRODUCT LENGTH ======================');
    print('===================== PRODUCT LENGTH ===================');
    print(products.length);
    print('===================== PRODUCT LENGTH ===================');
    print('=================== PRODUCT LENGTH =====================');
    return products;
  }

  static Future<Product> getByCategory(String id) async {
    String baseUrl =
        'https://albeline-backend.herokuapp.com/api/category/${id}';

    var productByCategoryResult = await http.get(baseUrl);
    var jsonObj = json.decode(productByCategoryResult.body);
    print(jsonObj);

    var byCategoryData = (jsonObj as Map<String, dynamic>)['products'];

    return Product.createByCategory(byCategoryData);
  }

  // static Future<Product> connectToAPI(
  //     String name, String images, String price) async {
  //   String baseUrl = 'http://api-albeline.herokuapp.com/api';

  //   var productResult = await http.get(baseUrl);
  //   var jsonObject = json.decode(baseUrl.body);

  //   http.post(baseUrl, body: {
  //     'name': name,
  //     'images': image,
  //     'price': price,
  //   });
  // }
}

class ProductDetail {
  String id;
  String name;
  String store;
  String detailImg;
  String category;
  String reviews;
  String price;
  String sold;
  String rate;
  String stock;
  String heavy;
  String condition;
  String description;

  ProductDetail({
    this.id,
    this.name,
    this.store,
    this.detailImg,
    this.category,
    this.reviews,
    this.price,
    this.sold,
    this.rate,
    this.stock,
    this.heavy,
    this.condition,
    this.description,
  });

  factory ProductDetail.createProductDetail(Map<String, dynamic> object) {
    return ProductDetail(
      id: object['id'].toString(),
      name: object['name'],
      detailImg: object['images']['id'].toString(),
      store: object['stores']['id'].toString(),
      category: object['categories']['id'].toString(),
      reviews: object['reviews']['id'].toString(),
      price: object['price'].toString(),
      sold: object['sold'].toString(),
      rate: object['rate'],
      stock: object['stock'].toString(),
      heavy: object['heavy'].toString(),
      condition: object['condition'].toString(),
      description: object['description'].toString(),
    );
  }

  Future getProductDetail(String id) async {
    String baseUrl = 'https://albeline-backend.herokuapp.com/api/product/${id}';

    // var productDetailResult = await http.get(baseUrl);
    // var jsonObj = json.decode(productDetailResult.body);
    // print(jsonObj);

    // var userData = (jsonObj as Map<String, dynamic>)['product'];

    // return ProductDetail.createProductDetail(userData);

    try {
      http.Response hasil = await http.get(Uri.encodeFull(baseUrl),
          headers: {"Accept": "application/json"});
      if (hasil.statusCode == 200) {
        print("Sukses Menampilkan Data");
        final data = json.decode(hasil.body);
        return data;
      } else {
        print("Gagal");
        return null;
      }
    } catch (e) {
      print("Error pada Catch $e");
    }
  }
}
