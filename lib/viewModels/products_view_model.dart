part of 'view_models.dart';

// Future getProducts() async {
//   try {
//     http.Response hasil = await http.get(
//         Uri.encodeFull("https://albeline-backend.herokuapp.com/api/products"),
//         headers: {"Accept": "application/json"});

//     if (hasil.statusCode == 200) {
//       print("Sukses Menampilkan Products");
//       final data = productsModelFromJson(hasil.body);
//       return data;
//     } else {
//       print("Gagal");
//       return null;
//     }
//   } catch (e) {
//     print("Error gp pada Catch $e");
//   }
// }

Future loginUser(String email, String password) async {
  try {
    String token;

    var data = {'email': email, 'password': password};
    print(data);
    var url = "https://albeline-backend.herokuapp.com/api/login";
    var hasil = await http.post(url, body: (data));

    if (hasil.statusCode == 200) {
      token = (tokenFromJson(hasil.body)).data.token.token;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('tokenKu', token);
      final String userToken = prefs.getString('tokenKu');
      print(userToken);
      print("Sukses Login");
      return true;
    } else if (hasil.statusCode == 401) {
      token = (tokenFromJson(hasil.body)).data.token.token;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('tokenKu', token);
      final String userToken = prefs.getString('tokenKu');
      print(userToken);
      print("Unauthorized");
      return false;
    } else {
      print("Gagal Login");
      return null;
    }
  } catch (e) {
    print("Error Login pada Catch $e");
  }
}

Future registerUser(
    String username, String email, String password, String c_password) async {
  try {
    var token;
    Map data = {
      'username': username,
      'email': email,
      'password': password,
      'c_password': c_password
    };
    print(data);

    http.Response hasil = await http.post(
        Uri.encodeFull("https://albeline-backend.herokuapp.com/api/register"),
        body: data,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        encoding: Encoding.getByName("utf-8"));

    if (hasil.statusCode == 200) {
      print("User Registered");
      return true;
    } else if (hasil.statusCode == 201) {
      print("Unauthorized");
      return true;
    } else if (hasil.statusCode == 401) {
      print("Unauthorized");
      return true;
    } else if (hasil.statusCode == 500) {
      print("Internal Server Error");
      return false;
    } else {
      print("Gagal Register");
      return null;
    }
  } catch (e) {
    print("Error Register pada Catch $e");
  }
}

Future singleProduct(String id) async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull(
            "https://albeline-backend.herokuapp.com/api/product/${id}"),
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
    print("Error sp pada Catch $e");
  }
}

// Future getCategories() async {
//   try {
//     http.Response hasil = await http.get(
//         Uri.encodeFull("https://albeline-backend.herokuapp.com/api/category"),
//         headers: {"Accept": "application/json"});

//     if (hasil.statusCode == 200) {
//       print("Sukses Menampilkan Categories");
//       return productsModelFromJson(hasil.body);
//     } else {
//       print("Gagal Menampilkan Categories");
//       return null;
//     }
//   } catch (e) {
//     print("Error pada Catch $e");
//   }
// }
