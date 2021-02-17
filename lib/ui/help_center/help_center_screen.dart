part of '../uis.dart';

class HelpCenterScreen extends StatelessWidget {
  static String routeName = "/help_center";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Center"),
      ),
      body: HelpCenterContent(),
    );
  }
}
