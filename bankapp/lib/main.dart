import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'send.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/send': (context) => SendMoney(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pgct = PageController();
  var cpgv = 0.0;
  var cards = [
    {"image": "card1.png"},
    {"image": "card2.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFFEFEFEF),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 30),
            child: Text(
              'Your balance',
              style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '\$ 52,456',
              style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CarouselSlider(
            height: 210,
            items: ["card1.png", "card2.png", "card3.png"].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('images/' + i),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            enlargeCenterPage: true,
            onPageChanged: (e) {
              print(e);
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFE0E0E0),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 12.0,
                      ),
                      BoxShadow(
                        color: Color(0xFFE0E0E0),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Income',
                        style: TextStyle(color: Color(0xFF9E9E9E)),
                      ),
                      Text(
                        '\$ 20,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Color(0xffe0e0e0),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.greenAccent,
                        ),
                        value: 0.8,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color(0xFFE0E0E0),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 12.0,
                      ),
                      BoxShadow(
                        color: Color(0xFFE0E0E0),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Spent',
                        style: TextStyle(color: Color(0xFF9E9E9E)),
                      ),
                      Text(
                        '\$ 12,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Color(0xffe0e0e0),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.redAccent,
                        ),
                        value: 0.3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              keyboardType: TextInputType.text,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                filled: true,
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search transaction",
                fillColor: Color(0xffe3e3e3),
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 20, bottom: 10),
            child: Text(
              'Transactions',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage('images/per1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'to:',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          ' Rebecca Moore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )
                      ],
                    ),
                    Text(
                      '3 April, 2019',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 5000',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage('images/per3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'to:',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          ' Rick Harrison',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )
                      ],
                    ),
                    Text(
                      '20 March, 2019',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 2000',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
                BoxShadow(
                  color: Color(0xFFE0E0E0),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 12.0,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: ExactAssetImage('images/per2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'to:',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          ' Jason Newsted',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )
                      ],
                    ),
                    Text(
                      '27 February, 2019',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 9500',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ))),
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          Navigator.pushNamed(context, '/send');
        },
        tooltip: 'Send money',
        child: Icon(Icons.screen_share),
        elevation: 10,
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          // color: Colors.blueGrey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  color: Color(0xFFa8a8a8),
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Color(0xFFa8a8a8),
                  icon: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.lightBlue,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Color(0xFFa8a8a8),
                  icon: Icon(
                    Icons.pie_chart,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  color: Color(0xFFa8a8a8),
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}
