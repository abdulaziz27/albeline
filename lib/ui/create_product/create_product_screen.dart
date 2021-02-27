part of '../uis.dart';

class CreateProductScreen extends StatelessWidget {
  static String routeName = "/create_product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Product'),
      ),
      body: CProductBody(),
    );
  }
}
