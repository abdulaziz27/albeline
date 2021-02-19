part of '../uis.dart';

class SettingProfileScreen extends StatelessWidget {
  static String routeName = "/settings_account";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    // SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
      ),
      body: SettingProfileContent(),
    );
  }
}
