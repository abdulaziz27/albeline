part of 'models.dart';

class Category {
  String id;
  String name;
  String image;

  Category({
    this.id,
    this.name,
    this.image,
  });

  factory Category.createCategory(Map<String, dynamic> object) {
    return Category(
      id: object['id'].toString(),
      name: object['name'],
      image: object['image']['id'].toString(),
    );
  }

  static Future<List<Category>> getCategories() async {
    String baseUrl = 'https://albeline-backend.herokuapp.com/api/category';

    var categoryResult = await http.get(baseUrl);
    var jsonObj = json.decode(categoryResult.body);
    print('================== Category ======================');
    print(jsonObj);
    print('================== Category ======================');

    List<dynamic> listCategory =
        (jsonObj as Map<String, dynamic>)['categories'];

    List<Category> categories = [];
    for (int i = 0; i < listCategory.length; i++)
      categories.add(Category.createCategory(listCategory[i]));

    print('================== Category Length ======================');
    print('==================== Category Length ====================');
    print(categories.length);
    print('================== Category Length ======================');
    print('===================== Category Length ===================');
    return categories;
  }
}

// class ByCategory {
//   String id;
//   List name;
//   String productId;
//   String productName;
//   String productImg;
//   String price;
//   String sold;

//   ByCategory({
//     this.id,
//     this.name,
//     this.productId,
//     this.productName,
//     this.productImg,
//     this.price,
//     this.sold,
//   });

//   factory ByCategory.createByCategory(Map<String, dynamic> object) {
//     return ByCategory(
//       id: object['products']['categories']['id'].toString(),
//       name: object['products']['categories']['name'],
//       productId: object['products']['id'].toString(),
//       productName: object['products']['name'].toString(),
//       productImg: object['products']['images']['0']['id'].toString(),
//       price: object['products']['price'].toString(),
//       sold: object['products']['sold'].toString(),
//     );
//   }

//   static Future<ByCategory> getByCategory(String id) async {
//     String baseUrl =
//         'https://albeline-backend.herokuapp.com/api/category/${id}';

//     var productByCategoryResult = await http.get(baseUrl);
//     var jsonObj = json.decode(productByCategoryResult.body);
//     print(jsonObj);

//     var byCategoryData = (jsonObj as Map<String, dynamic>)['products'];

//     return ByCategory.createByCategory(byCategoryData);
//   }
// }
