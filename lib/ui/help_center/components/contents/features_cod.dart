part of '../../../uis.dart';

class FeaturesCODContent extends StatelessWidget {
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
                    "Features of COD (Cash On Delivery)",
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
                    "3 benefits of activating COD (Cash On Delivery)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "1. Reach many buyers",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "There is more than 1.6 million Pay On Spot users in 24 provinces and 63 cities!.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "2. Potential to increase traffic",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Easy to find on many pages with special COD filters and other special pages.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "3. Transactions are guaranteed safe, automatically protected by insurance without any fees",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "The delivery of goods is guaranteed safe because the buyer can only open the goods after the courier receives payment. If there is a return, the postage is covered by Albeline, and lost/damaged items will be automatically covered by insurance.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What is COD (Cash On Delivery) ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "The Pay on Place or COD (Cash on Delivery) feature allows the buyer to make cash payments to the courier after the goods are received. Features that can be used by all Albeline users!.",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Isn't that interesting? Let's activate the COD (Pay on the Spot) feature now! You can activate this feature via the desktop or the Albeline Seller application on Android. Check out the easy steps to activate the COD (Pay on Place) feature via the desktop below.",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  // Line Limit
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Frequently asked questions",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      "1. Is there anything I need to pay for using the Pay On-site feature?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Not. The Pay on Place feature is FREE without any service fees from the Seller, both shipping costs to the buyer and shipping costs back to the Seller.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "2. Can I only select certain SKUs / products for the Pay On-site feature?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Not. When the Seller activates the Pay on Place feature, all products / SKUs with prices below Rp. 2,500,000 will automatically be available for purchase using the Pay On-site system. All product categories, except for Food and Beverage categories, can use the Pay On-site feature.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "3. Will the courier deliver the payment money to the Seller after receiving it from the buyer?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Couriers do not need to deliver money to sellers. Sales funds will automatically go to the Albeline Seller balance after a successful transaction.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "4. What if the buyer is not available and cannot be reached during delivery?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "If the buyer has been contacted repeatedly but there is still no response, the order will be canceled and the product will be sent back to the seller and the buyer will be blacklisted by Albeline. The seller does not need to issue postage at all.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "5. What if the buyer wants to return the product?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Buyers can return if the item has not been opened. Buyers can notify directly to the courier if they want to return it, and the goods will be returned to the seller.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "6. Who is responsible for postage and/or returns?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "The return fee will be borne by Albeline. The seller does not need to issue any postage.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "7. What if the buyer casually ordered Pay on the Spot but after the item arrives, he doesn't want to make the payment?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "New products will be provided by the courier after the buyer makes the payment. Before the buyer makes a payment, the product will not be handed over to the buyer and may not be opened.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "8. What if the product is lost or damaged?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Lost or damaged products will be covered by insurance.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Text(
                    "9. How to make an insurance claim if the product is lost or damaged?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Sellers can make insurance claims through the Resolution Center by creating tickets related to damaged / missing products.",
                      style: TextStyle(
                          color: Colors.black,
                          // fontWeight: FontWeight.bold,
                          fontSize: 13),
                      textAlign: TextAlign.justify,
                    ),
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
