part of '../../uis.dart';

class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  List dataProducts;

  double width = 140.toDouble(), aspectRetio = 1.02.toDouble();

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
      Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: dataProducts.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  SizedBox(
                      child: Image.network(
                          'https://albeline-backend.herokuapp.com/api/image/2')),
                  SizedBox(child: Text('RP. {$dataProducts[index].price}')),
                ],
              );
            }),
      )
    ]);
  }
}
