part of '../../uis.dart';

// class DetailsScreen extends StatelessWidget {
//   static String routeName = "/details";

//   @override
//   Widget build(BuildContext context) {
//     final ProductDetailsArguments agrs =
//         ModalRoute.of(context).settings.arguments;
//     return Scaffold(
//       backgroundColor: Color(0xFFF5F6F9),
//       appBar: CustomAppBar(rating: agrs.product.rate),
//       body: Body(product: agrs.product),
//     );
//   }
// }

// class ProductDetailsArguments {
//   final List product;

//   ProductDetailsArguments({@required this.product});
// }

// class CustomAppBar extends PreferredSize {
//   final double rating;

//   CustomAppBar({@required this.rating});

//   @override
//   // AppBar().preferredSize.height provide us the height that appy on our app bar
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//         child: Row(
//           children: [
//             SizedBox(
//               height: getProportionateScreenWidth(40),
//               width: getProportionateScreenWidth(40),
//               child: FlatButton(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(60),
//                 ),
//                 color: Colors.white,
//                 padding: EdgeInsets.zero,
//                 onPressed: () => Navigator.pop(context),
//                 child: SvgPicture.asset(
//                   "assets/icons/Back ICon.svg",
//                   height: 15,
//                 ),
//               ),
//             ),
//             Spacer(),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(14),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     "$rating",
//                     style: const TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(width: 5),
//                   SvgPicture.asset("assets/icons/Star Icon.svg"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   final List product;

//   const Body({Key key, @required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         ProductImages(product: product),
//         TopRoundedContainer(
//           color: Colors.white,
//           child: Column(
//             children: [
//               ProductDescription(
//                 product: product,
//                 pressOnSeeMore: () {},
//               ),
//               TopRoundedContainer(
//                 color: Color(0xFFF6F7F9),
//                 child: Column(
//                   children: [
//                     // ColorDots(product: product),
//                     TopRoundedContainer(
//                       color: Colors.white,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: SizeConfig.screenWidth * 0.15,
//                           right: SizeConfig.screenWidth * 0.15,
//                           bottom: getProportionateScreenWidth(40),
//                           top: getProportionateScreenWidth(15),
//                         ),
//                         child: DefaultButton(
//                           text: "Add To Cart",
//                           press: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TopRoundedContainer extends StatelessWidget {
//   const TopRoundedContainer({
//     Key key,
//     @required this.color,
//     @required this.child,
//   }) : super(key: key);

//   final Color color;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
//       padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       child: child,
//     );
//   }
// }

// class ProductImages extends StatefulWidget {
//   const ProductImages({
//     Key key,
//     @required this.product,
//   }) : super(key: key);

//   final List product;

//   @override
//   _ProductImagesState createState() => _ProductImagesState();
// }

// class _ProductImagesState extends State<ProductImages> {
//   int selectedImage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: getProportionateScreenWidth(238),
//           child: AspectRatio(
//             aspectRatio: 1,
//             // child: Hero(
//             //   tag: widget.product.id.toString(),
//             //   child: Image.asset(widget.product.images[selectedImage]),
//             // ),
//           ),
//         ),
//         // SizedBox(height: getProportionateScreenWidth(20)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ...List.generate(widget.product.images.length,
//                 (index) => buildSmallProductPreview(index)),
//           ],
//         )
//       ],
//     );
//   }

//   GestureDetector buildSmallProductPreview(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: AnimatedContainer(
//         duration: defaultDuration,
//         margin: EdgeInsets.only(right: 15),
//         padding: EdgeInsets.all(8),
//         height: getProportionateScreenWidth(48),
//         width: getProportionateScreenWidth(48),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//               color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
//         ),
//         // child: Image.asset(widget.product.images[index]),
//       ),
//     );
//   }
// }

// // class ColorDots extends StatelessWidget {
// //   const ColorDots({
// //     Key key,
// //     @required this.product,
// //   }) : super(key: key);

// //   final Product product;

// //   @override
// //   Widget build(BuildContext context) {
// //     // Now this is fixed and only for demo
// //     int selectedColor = 3;
// //     return Padding(
// //       padding:
// //           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
// //       child: Row(
// //         children: [
// //           // ...List.generate(
// //           //   product.colors.length,
// //           //   (index) => ColorDot(
// //           //     color: product.colors[index],
// //           //     isSelected: index == selectedColor,
// //           //   ),
// //           // ),
// //           Spacer(),
// //           RoundedIconBtn(
// //             icon: Icons.remove,
// //             press: () {},
// //           ),
// //           SizedBox(width: getProportionateScreenWidth(20)),
// //           RoundedIconBtn(
// //             icon: Icons.add,
// //             showShadow: true,
// //             press: () {},
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class ColorDot extends StatelessWidget {
// //   const ColorDot({
// //     Key key,
// //     @required this.color,
// //     this.isSelected = false,
// //   }) : super(key: key);

// //   final Color color;
// //   final bool isSelected;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       margin: EdgeInsets.only(right: 2),
// //       padding: EdgeInsets.all(getProportionateScreenWidth(8)),
// //       height: getProportionateScreenWidth(40),
// //       width: getProportionateScreenWidth(40),
// //       decoration: BoxDecoration(
// //         color: Colors.transparent,
// //         border:
// //             Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
// //         shape: BoxShape.circle,
// //       ),
// //       child: DecoratedBox(
// //         decoration: BoxDecoration(
// //           color: color,
// //           shape: BoxShape.circle,
// //         ),
// //       ),
// //     );
// //   }
// // }

// class ProductDescription extends StatelessWidget {
//   const ProductDescription({
//     Key key,
//     @required this.product,
//     this.pressOnSeeMore,
//   }) : super(key: key);

//   final List product;
//   final GestureTapCallback pressOnSeeMore;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: Text(
//             product.name,
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         ),
//         Align(
//           alignment: Alignment.centerRight,
//           child: Container(
//             padding: EdgeInsets.all(getProportionateScreenWidth(15)),
//             width: getProportionateScreenWidth(64),
//             // decoration: BoxDecoration(
//             //   color:
//             //       product.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
//             //   borderRadius: BorderRadius.only(
//             //     topLeft: Radius.circular(20),
//             //     bottomLeft: Radius.circular(20),
//             //   ),
//             // ),
//             // child: SvgPicture.asset(
//             //   "assets/icons/Heart Icon_2.svg",
//             //   color:
//             //       product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
//             //   height: getProportionateScreenWidth(16),
//             // ),
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.only(
//             left: getProportionateScreenWidth(20),
//             right: getProportionateScreenWidth(64),
//           ),
//           child: Text(
//             product.desc,
//             maxLines: 3,
//           ),
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: getProportionateScreenWidth(20),
//             vertical: 10,
//           ),
//           child: GestureDetector(
//             onTap: () {},
//             child: Row(
//               children: [
//                 Text(
//                   "See More Detail",
//                   style: TextStyle(
//                       fontWeight: FontWeight.w600, color: kPrimaryColor),
//                 ),
//                 SizedBox(width: 5),
//                 Icon(
//                   Icons.arrow_forward_ios,
//                   size: 12,
//                   color: kPrimaryColor,
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
