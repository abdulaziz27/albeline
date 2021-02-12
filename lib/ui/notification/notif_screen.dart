part of '../uis.dart';

class NotifScreen extends StatelessWidget {
  static String routeName = "/notif";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Error2Screen(),
    );
  }
}
