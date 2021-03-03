part of '../uis.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SignUpBody(),
    );
  }
}
