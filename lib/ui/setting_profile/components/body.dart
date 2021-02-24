part of '../../uis.dart';

class SettingProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                      bottom: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      "My Account",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "My Profile",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "My Address",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Card or Back Account",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                      bottom: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      "Setting",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Chat Settings",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Notification Settings",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Privacy Settings",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "User Blocked",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Language",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                      bottom: BorderSide(color: Color(0xFFFF7643), width: 15.0),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Help Center",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () => {
                    Navigator.pushNamed(context, HelpCenterScreen.routeName),
                  },
                ),
                ListTile(
                  title: Text(
                    "Tips and Tricks",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Community Regulations",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Albeline Policy",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "User Blocked",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Information",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    "Apply for account deletion",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "24 Hours Customer Service",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Color(0xFFFF7643),
            child: Text(
              "@2020 Albeline. Copyright",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ],
      ),
    );
  }
}
