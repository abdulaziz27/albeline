part of 'models.dart';

class Product {
  String id;
  String name;
  String images;
  String price;

  Product({this.id, this.name, this.images, this.price});

  factory Product.createProduct(Map<String, dynamic> object) {
    return Product(
      id: object['id'].toString(),
      name: object['name'],
      images: object['images'][0]['id'].toString(),
      price: object['price'].toString(),
    );
  }

  static Future<List<Product>> getProducts() async {
    String baseUrl = 'https://albeline-backend.herokuapp.com/api/products';

    var productResult = await http.get(baseUrl);
    var jsonObj = json.decode(productResult.body);
    print(jsonObj);

    List<dynamic> listProduct = (jsonObj as Map<String, dynamic>)['products'];

    List<Product> products = [];
    for (int i = 0; i < listProduct.length; i++)
      products.add(Product.createProduct(listProduct[i]));

    print(products.length);
    return products;
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
