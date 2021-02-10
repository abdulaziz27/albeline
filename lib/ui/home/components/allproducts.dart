part of '../../uis.dart';

// class AllProducts extends StatefulWidget {
//   @override
//   _AllProductsState createState() => _AllProductsState();
// }

// class _AllProductsState extends State<AllProducts> {
//   List dataProducts;

//   void getDataProducts() {
//     getProducts().then((value) {
//       setState(() {
//         dataProducts = value;
//       });
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getDataProducts();
//     print(dataProducts);
//     print(ProductCard());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: ApiService().getProducts(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: getProportionateScreenWidth(20)),
//                   child: SectionTitle(title: "All Products", press: () {}),
//                 ),
//                 SizedBox(height: getProportionateScreenWidth(20)),
//                 ListView.builder(
//                     itemCount: dataProducts.length,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (BuildContext context, int index) {
//                       return ProductCard();
//                     }),
//               ],
//             );
//           } else {
//             return Center(
//               child: Text("No Data Displayed"),
//             );
//           }
//         });
//   }
// }
