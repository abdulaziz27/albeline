part of 'widgets.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key key,
//     this.width = 140,
//     this.aspectRetio = 1.02,
//     @required this.dataProducts,
//   }) : super(key: key);

//   final double width, aspectRetio;
//   final List dataProducts;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
//       child: SizedBox(
//         width: getProportionateScreenWidth(width),
//         child: GestureDetector(
//           // onTap: () => Navigator.pushNamed(
//           //   context,
//           //   DetailsScreen.routeName,
//           //   arguments: ProductDetailsArguments(product: product),
//           // ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(
//                 aspectRatio: 1.02,
//                 child: Container(
//                   padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//                   decoration: BoxDecoration(
//                     color: kSecondaryColor.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Hero(
//                     tag: dataProducts[i].id.toString(),
//                     child: Image.network(
//                         'https://albeline-backend.herokuapp.com/api/image/{$dataProducts[0].images}'),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 dataProducts.name,
//                 style: TextStyle(color: Colors.black),
//                 maxLines: 2,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Rp. ${product.price}",
//                     style: TextStyle(
//                       fontSize: getProportionateScreenWidth(13),
//                       fontWeight: FontWeight.w600,
//                       color: kPrimaryColor,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
