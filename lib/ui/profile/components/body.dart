part of '../../uis.dart';

class ProfileBody extends StatelessWidget {
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
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
