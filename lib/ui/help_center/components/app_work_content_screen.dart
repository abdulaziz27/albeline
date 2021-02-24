part of '../../uis.dart';

class AppWorkScreen extends StatelessWidget {
  static String routeName = "/albeline_app_work_content";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How Does Albeline App Work"),
      ),
      body: AppWorkContent(),
    );
  }
}
