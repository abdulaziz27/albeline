part of '../uis.dart';

// var count = dataByCategory.where((c) => c.categories == someProductId).toList().length;

class ProductByCategoryScreen extends StatefulWidget {
  ProductByCategoryScreen({Key key}) : super(key: key);

  @override
  _ProductByCategoryScreenState createState() =>
      _ProductByCategoryScreenState();
}

class _ProductByCategoryScreenState extends State<ProductByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Test'),
    );
  }
}
