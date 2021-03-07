part of '../../uis.dart';

class ProfileBody extends StatefulWidget {
  // final User user;

  // ProfileBody(this.user);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName),
            },
          ),
          ProfileMenu(
            text: "Create Product",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.pushNamed(context, CreateProductScreen.routeName),
            },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () => {
              Navigator.pushNamed(context, NotifScreen.routeName),
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () => {
              Navigator.pushNamed(context, SettingProfileScreen.routeName),
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () => {
              Navigator.pushNamed(context, HelpCenterScreen.routeName),
            },
          ),
          ProfileMenu(
            text: "Exit",
            icon: "assets/icons/Log out.svg",
            press: () {
              // SharedPreferences.clear();
              // SharedPreferences.commit();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
                (Route<dynamic> route) => false,
              );
              // await AuthServices.signOut().then(
              //   (value) => setState(() {
              //     Flushbar(
              //       title: "Logged out!",
              //       message: "See you again",
              //       duration: Duration(seconds: 3),
              //       backgroundColor: Colors.red,
              //     )..show(context).then((value) => Navigator.pushAndRemoveUntil(
              //           context,
              //           MaterialPageRoute(builder: (context) => SplashScreen()),
              //           (Route<dynamic> route) => false,
              //         ));
              //   }),
              // );
            },
          ),
        ],
      ),
    );
  }
}
