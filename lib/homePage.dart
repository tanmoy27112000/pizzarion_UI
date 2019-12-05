import 'package:flutter/material.dart';
import './detailsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedCard = "Pizza";
  var selectedPizza = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: <Widget>[
                      AppBarIcons(Icon(Icons.menu)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                      ),
                      AppBarIcons(Icon(Icons.search)),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("images/pizza1.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Food",
                          style: Theme.of(context).textTheme.display1,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Delivery",
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildInfoCard("Burger", "icons/burger.png"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildInfoCard("Pizza", "icons/pizza.png"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildInfoCard("Salad", "icons/salad.png"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildInfoCard("Dessert", "icons/dessert.png"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Popular",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildItemInfo("Quattro formaggi",
                              "images/pizza1.png", "\$12.99"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildItemInfo(
                              "Peparori Pizza", "images/pizza2.png", "\$12.99"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildItemInfo(
                              "Mushroom pizza", "images/pizza3.png", "\$12.99"),
                          SizedBox(
                            width: 40,
                          ),
                          _buildItemInfo(
                              "Cheese Burst", "images/pizza4.png", "\$12.99"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      "Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("images/pizza1.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset("images/pizza2.png"),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget AppBarIcons(Icon icon) {
    //! To create the icon for appbar
    return IconButton(
      icon: icon,
      onPressed: () {},
      color: Colors.black,
    );
  }

  Widget _buildInfoCard(String cardTitle, String icon) {
    //!To create the category list
    Color color = _colorFromHex("#FEAF7B");
    return InkWell(
      onTap: () {
        SelectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: cardTitle == selectedCard ? color : Colors.white,
          border: Border.all(
            color: cardTitle == selectedCard
                ? Colors.transparent
                : Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
            width: 0.75,
          ),
        ),
        width: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 30,
              height: 30,
              child: Image.asset(icon),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
              ),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  color:
                      cardTitle == selectedCard ? Colors.black : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemInfo(String cardTitle, String icon, String price) {
    //!To create the category list
    Color color = _colorFromHex("#FEAF7B");
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(cardTitle, price, icon)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: cardTitle == selectedPizza ? color : Colors.white,
          border: Border.all(
            color: cardTitle == selectedPizza
                ? Colors.transparent
                : Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
            width: 0.75,
          ),
        ),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: cardTitle,
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset(icon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Text(
                price,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color:
                      cardTitle == selectedPizza ? Colors.black : Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  // top: 8.0,
                  ),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color:
                      cardTitle == selectedPizza ? Colors.black : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    return Color(int.parse('FF' + hexColor, radix: 16));
  }

  SelectPizzaCard(cardtitle) {
    setState(() {
      selectedPizza = cardtitle;
    });
  }

  SelectCard(cardtitle) {
    setState(() {
      selectedCard = cardtitle;
    });
  }
}
