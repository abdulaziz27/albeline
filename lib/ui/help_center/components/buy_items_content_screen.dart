part of '../../uis.dart';

class BuyItemScreen extends StatelessWidget {
  static String routeName = "/albeline_buy_items_content";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to Buy Items Available on Albeline"),
      ),
      body: BuyItemContent(),
    );
  }
}
