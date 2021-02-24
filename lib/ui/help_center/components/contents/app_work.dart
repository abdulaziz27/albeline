part of '../../../uis.dart';

class AppWorkContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(17),
              child: Column(
                children: [
                  Text(
                    "How Does Albeline App Work",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ), // Title
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Icon(Icons.access_time),
                        Text(
                          "   12 Januari 2021",
                          style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ), // Time Create,
                      ],
                    ),
                  ),
                ],
              ),
            ), // Title and Time Create
            SizedBox(
              height: 5,
            ),
            Container(
              // margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(17),
              child: Column(
                children: [
                  Text(
                    "The Albeline application was created to make it easier for buyers to order the desired item without having to go to the seller's place.",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "The Albeline application makes it easy for you to order. You just have to look for the item you want, then choose the item that suits your needs, and with a single touch of the buy button, your goods are ready to be delivered safely and neatly.",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ), // Content
          ],
        ),
      ),
    );
  }
}
