part of '../uis.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SignInBody(),
    );
  }
}
