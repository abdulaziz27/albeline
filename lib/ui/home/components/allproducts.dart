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
      FutureBuilder(
          future: Product.getProducts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data.isEmpty)
              return Center(
                  child: CircularProgressIndicator()); //CIRCULAR INDICATOR
            else
              return SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      childAspectRatio: 0.9,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: [
                        ...List.generate(
                          dataProducts.length,
                          (index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(20),
                                  right: getProportionateScreenWidth(20)),
                              child: SizedBox(
                                width: getProportionateScreenWidth(width),
                                child: GestureDetector(
                                  // onTap: () => Navigator.pushNamed(
                                  //   context,
                                  //   DetailsScreen.routeName,
                                  //   arguments: ProductDetailsArguments(
                                  //       product: product),
                                  // ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AspectRatio(
                                        aspectRatio: 1.02,
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              getProportionateScreenWidth(10)),
                                          decoration: BoxDecoration(
                                            color: kSecondaryColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Hero(
                                            tag: dataProducts[index]
                                                .id
                                                .toString(),
                                            child: Image.network(
                                                "https://albeline-backend.herokuapp.com/api/image/${dataProducts[index].images}"),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        dataProducts[index].name,
                                        style: TextStyle(
                                            fontSize:
                                                getProportionateScreenWidth(10),
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
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      10),
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
          })
    ]);
  }
}
