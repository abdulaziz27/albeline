part of '../../uis.dart';

class SpecialOffers extends StatefulWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  _SpecialOffersState createState() => _SpecialOffersState();
}

class _SpecialOffersState extends State<SpecialOffers> {
  List<Category> categories = [];
  // List dataCategory;

  void getListCategories() {
    Category.getCategories().then((value) {
      setState(() {
        categories = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getListCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Categories",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        FutureBuilder(
            future: Category.getCategories(),
            builder: (context, snapshot) {
              if (!snapshot.hasData || snapshot.data.isEmpty)
                return Center(
                    child: CircularProgressIndicator()); //CIRCULAR INDICATOR
              else
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(categories.length, (index) {
                        return SpecialOfferCard(
                          image:
                              'https://albeline-backend.herokuapp.com/api/image/${categories[index].image}',
                          category: categories[index].name,
                          numOfBrands: categories[index].id.toString().length,
                          press: () {
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) {
                            //     return ByCategoryScreen(
                            //         id: categories[index].id.toString());
                            //   },
                            // ));
                          },
                        );
                      }),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  ),
                );
            }),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Product(s)")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
