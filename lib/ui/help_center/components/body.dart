part of '../../uis.dart';

class HelpCenterContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 20),
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
                      "FAQ",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "How Does the Albeline Application Work?",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () =>
                      {Navigator.pushNamed(context, AppWorkScreen.routeName)},
                ),
                ListTile(
                  title: Text(
                    "How to Buy Items Available on Albeline?",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () =>
                      {Navigator.pushNamed(context, BuyItemScreen.routeName)},
                ),
                ListTile(
                  title: Text(
                    "Features of COD (Cash On Delivery) on the Albeline App",
                    style: TextStyle(fontSize: 13),
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () => {
                    Navigator.pushNamed(context, FeaturesCODScreen.routeName)
                  },
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
                      "FOR MORE INFORMATION CONTACT US :",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/whatsapp3.png",
                    width: 30,
                    height: 30,
                  ),
                  title: Text(
                    "Whatsapp: ",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "+62 81234567890",
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/instagram.png",
                    width: 30,
                    height: 30,
                  ),
                  title: Text(
                    "Instagram: ",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "@albeline",
                  ),
                  trailing: Icon(
                    Icons.arrow_right,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/icons/gmail.png",
                    width: 30,
                    height: 30,
                  ),
                  title: Text(
                    "Gmail: ",
                    style: TextStyle(fontSize: 13),
                  ),
                  subtitle: Text(
                    "albeline@gmail.com",
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
