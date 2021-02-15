part of 'view_models.dart';

// final String baseUrl = 'http://api-albeline.herokuapp.com/api';

// Future getProducts() async {
//   try {
//     http.Response hasil = await http.get(Uri.encodeFull("$baseUrl/products"),
//         headers: {"Accept": "application/json"});
//     if (hasil.statusCode == 200) {
//       print("data Products success");
//       final data = productModelFromJson(hasil.body);
//       print(data);
//       print(hasil.body);
//       return data;
//     } else {
//       print("error status " + hasil.statusCode.toString());
//       return null;
//     }
//   } catch (e) {
//     print("error catch $e");
//     return null;
//   }
// }
