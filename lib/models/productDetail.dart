part of 'models.dart';

// class ProductDetail {
//   String id;
//   String name;
//   String store;
//   String detailImg;
//   String price;

//   ProductDetail({this.id, this.name, this.detailImg, this.price});

//   factory ProductDetail.createProduct(Map<String, dynamic> object) {
//     return ProductDetail(
//       id: object['id'].toString(),
//       name: object['name'],
//       detailImg: object['images']['id'].toString(),
//       price: object['price'].toString(),
//       store: object,
//     );
//   }

//   static Future<List<ProductDetail>> getProductDetail() async {
//     String baseUrl = 'https://albeline-backend.herokuapp.com/api/products';

//     var productResult = await http.get(baseUrl);
//     var jsonObj = json.decode(productResult.body);
//     print(jsonObj);

//     List<dynamic> listProduct = (jsonObj as Map<String, dynamic>)['products'];

//     List<Product> products = [];
//     for (int i = 0; i < listProduct.length; i++)
//       products.add(Product.createProduct(listProduct[i]));

//     print(products.length);
//     return productDetail;
//   }
// }
