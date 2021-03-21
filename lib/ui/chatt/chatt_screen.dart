part of '../uis.dart';

class ChattScreen extends StatelessWidget {
  static String routeName = "/chatt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: ChattBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.chatt),
    );
  }
}
