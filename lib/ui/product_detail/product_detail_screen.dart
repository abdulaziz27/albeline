part of '../uis.dart';

class ProductDetailScreen extends StatefulWidget {
  final String id;
  final Product product;

  ProductDetailScreen({this.id, this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  List dataProductDetailOk;
  // List image = [];

  int selectedImage = 0;
  double rating;

  void dataProductDetail() {
    singleProduct(widget.id).then((value) {
      setState(() {
        dataProductDetailOk = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataProductDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F6F9),
        appBar: CustomAppBar(),
        body: dataProductDetailOk == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: dataProductDetailOk.length,
                itemBuilder: (context, i) {
                  var data = dataProductDetailOk[i];
                  print(data);
                  return Column(
                    children: <Widget>[
                      Column(
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(238),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Hero(
                                tag: data.id.toString(),
                                child: Image.network(
                                    data.images[selectedImage].toString()),
                              ),
                            ),
                          ),
                          // SizedBox(height: getProportionateScreenWidth(20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(data.images.length,
                                  (index) => buildSmallProductPreview(index)),
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: getProportionateScreenWidth(20)),
                        padding: EdgeInsets.only(
                            top: getProportionateScreenWidth(20)),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(20)),
                                  child: Text(
                                    data.name,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getProportionateScreenWidth(20),
                                    right: getProportionateScreenWidth(64),
                                  ),
                                  child: Text(
                                    data.desc,
                                    maxLines: 3,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: getProportionateScreenWidth(20),
                                    vertical: 10,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    // pressOnSeeMore: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          "See More Detail",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: kPrimaryColor),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 12,
                                          color: kPrimaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: getProportionateScreenWidth(20)),
                              padding: EdgeInsets.only(
                                  top: getProportionateScreenWidth(20)),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F7F9),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: getProportionateScreenWidth(20)),
                                    padding: EdgeInsets.only(
                                        top: getProportionateScreenWidth(20)),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: SizeConfig.screenWidth * 0.15,
                                        right: SizeConfig.screenWidth * 0.15,
                                        bottom: getProportionateScreenWidth(40),
                                        top: getProportionateScreenWidth(15),
                                      ),
                                      child: DefaultButton(
                                        text: "Add To Cart",
                                        press: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }));
  }

  Widget CustomAppBar() {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                color: Colors.white,
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        // child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
