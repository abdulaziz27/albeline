part of '../../uis.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List dataProducts = [];

  double width = 140;
  double aspectRetio = 1.02;

  void getListProducts() {
    Product.getProducts().then((value) {
      setState(() {
        dataProducts = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SectionTitle(title: "Suggested Products", press: () {}),
      ),
      SizedBox(height: getProportionateScreenWidth(20)),
      Stack(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ...List.generate(
                  dataProducts.length,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(20)),
                      child: SizedBox(
                        width: getProportionateScreenWidth(width),
                        child: GestureDetector(
                          // onTap: () => Navigator.pushNamed(
                          //   context,
                          //   DetailsScreen.routeName,
                          //   arguments: ProductDetailsArguments(product: product),
                          // ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.02,
                                child: Container(
                                  padding: EdgeInsets.all(
                                      getProportionateScreenWidth(20)),
                                  decoration: BoxDecoration(
                                    color: kSecondaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Hero(
                                    tag: dataProducts[index].id.toString(),
                                    child: Image.network(
                                        "https://albeline-backend.herokuapp.com/api/image/${dataProducts[index].images}"),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                dataProducts[index].name,
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(10),
                                    color: Colors.black),
                                maxLines: 2,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp. ${dataProducts[index].price}",
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(10),
                                      fontWeight: FontWeight.w600,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
      // Expanded(
      //   child: SizedBox(
      //     width: width,
      //     height: 400,
      //     child: ListView.builder(
      //         scrollDirection: Axis.horizontal,
      //         shrinkWrap: true,
      //         itemCount: dataProducts.length,
      //         itemBuilder: (context, index) {
      //           return Column(
      //             children: <Widget>[
      //               Text('Dulziz'),
      //               SizedBox(child: Text('Dulziz')),
      //             ],
      //           );
      //         }),
      //   ),
      // )
    ]);
  }
}

Widget _productCard(BuildContext context) {
  double width = 140.toDouble(), aspectRetio = 1.02.toDouble();

  return Padding(
    padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
    child: SizedBox(
      width: getProportionateScreenWidth(width),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Test'),
            Text('Test'),
          ],
        ),
      ),
    ),
  );
}
