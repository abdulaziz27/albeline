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

class CategoryDetail {
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

  CategoryDetail({
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

  factory CategoryDetail.createCategoryDetail(Map<String, dynamic> object) {
    return CategoryDetail(
      id: object['id'].toString(),
      name: object['name'],
      detailImg: object['images']['id'].toString(),
      store: object['stores']['id'].toString(),
      category: object['categories']['id'].toString(),
      reviews: object['reviews']['id'].toString(),
      price: object['price'].toString(),
      sold: object['sold'].toString(),
      rate: object['rate'].toString(),
      stock: object['stock'].toString(),
      heavy: object['heavy'].toString(),
      condition: object['condition'].toString(),
      description: object['description'].toString(),
    );
  }

  static Future<CategoryDetail> getCategoryDetail(String id) async {
    String baseUrl =
        'https://albeline-backend.herokuapp.com/api/category/${id}';

    var productDetailResult = await http.get(baseUrl);
    var jsonObj = json.decode(productDetailResult.body);
    print(jsonObj);

    var userData = (jsonObj as Map<String, dynamic>)['product'];

    return CategoryDetail.createCategoryDetail(userData);
  }
}
