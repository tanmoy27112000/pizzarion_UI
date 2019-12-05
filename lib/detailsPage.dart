import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String title;
  String price;
  String heroTag;

  DetailsPage(this.title, this.price, this.heroTag);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String selectedSize = "";
  int counter = 0;
  int isFavourite = 0;

  @override
  Widget build(BuildContext context) {
    Color color = _colorFromHex("#FEAF7B");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        color: Colors.black,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Hero(
                        tag: widget.heroTag,
                        child: Container(
                          child: Image.asset(widget.heroTag),
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 40),
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            width: 1.0,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 130,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                _counter(0);
                              },
                            ),
                            Text(
                              counter.toString(),
                              style: Theme.of(context).textTheme.caption,
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                _counter(1);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 40),
                      child: Text(widget.price,
                          style: Theme.of(context).textTheme.display1),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                  child: Text(
                    "Pizza is a savory dish of Italian origin,flattened base of leavened wheat-based dough topped with tomatoes, cheese. ",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () => _selectedSize("24"),
                        child: selectedSize == "24"
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "24cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            : AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "24cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                      ),
                      InkWell(
                        onTap: () => _selectedSize("32"),
                        child: selectedSize == "32"
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "32cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            : AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "32cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                      ),
                      InkWell(
                        onTap: () => _selectedSize("42"),
                        child: selectedSize == "42"
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "42cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            : AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                width: 100,
                                height: 50,
                                child: Center(
                                  child: Text(
                                    "42cm",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 40, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => _isFavourite(1),
                        child: isFavourite != 1
                            ? Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1.0,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.favorite_border),
                              )
                            : Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.favorite_border),
                              ),
                      ),
                      Container(
                        width: 280,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: color),
                        child: Center(
                          child: Text(
                            "Add to cart",
                            style: Theme.of(context).textTheme.display2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _counter(int n) {
    if (n == 1) {
      setState(() {
        counter++;
      });
    } else {
      if (counter != 0) {
        setState(() {
          counter--;
        });
      }
    }
  }

  _selectedSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  Color _colorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    return Color(int.parse('FF' + hexColor, radix: 16));
  }

  _isFavourite(int n) {
    if (n == 1) {
      setState(() {
        isFavourite = 1;
      });
    }
  }
}
