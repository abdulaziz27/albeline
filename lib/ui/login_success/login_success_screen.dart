part of '../uis.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: SizedBox(),
      //   title: Text("Albeline Bot"),
      // ),
      body: LoginSBody(),
    );
  }
}
