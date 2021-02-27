part of '../../uis.dart';

class FeaturesCODScreen extends StatelessWidget {
  static String routeName = "/albeline_features_content_content";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Features of COD (Cash On Delivery)"),
      ),
      body: FeaturesCODContent(),
    );
  }
}
