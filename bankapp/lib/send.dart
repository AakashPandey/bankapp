import 'package:flutter/material.dart';

class SendMoney extends StatefulWidget {
  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  Widget sendCard() {
    return Container(
      // margin: EdgeInsets.all(50),
      child: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text('Select credit card')),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Color(0xffe3e3e3),

                  ),
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text('VISA'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("* * * * "), Text("3546")],
                        ),
                        Text('\$ 9000')
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Color(0xffe3e3e3),

                  ),                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text('VISA'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("* * * * "), Text("3546")],
                        ),
                        Text('\$ 9000')
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 15),
                    width: 200,
decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Color(0xffe3e3e3),

                  ),                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text('VISA'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[Text("* * * * "), Text("3546")],
                        ),
                        Text('\$ 9000')
                      ],
                    )),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text('Recipient')),
          Container(
            height: 140,
            margin: EdgeInsets.only(left: 20, top: 15),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.grey
                    )
                  ),
                   margin: EdgeInsets.only(right: 15),
                  width: 200,
                  padding: EdgeInsets.all(15),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green
                        ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                      Text('New recipient')
                    ]
                   ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Color(0xffe3e3e3),

                  ),
                  margin: EdgeInsets.only(right: 15),
                  width: 200,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: ExactAssetImage('images/per1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Rebecca Moore')
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  color: Color(0xffe3e3e3),

                  ),
                  margin: EdgeInsets.only(right: 15),
                  width: 200,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: ExactAssetImage('images/per2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Jason Newsted')
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffe3e3e3),


                  ),
                  margin: EdgeInsets.only(right: 15),
                  width: 200,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: ExactAssetImage('images/per3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text('Rick Harrison')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text('Transaction details')),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              keyboardType: TextInputType.text,
              enableInteractiveSelection: true,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.grey,
                ),
                hintText: "Amount",
                fillColor: Color(0xffe3e3e3),
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              keyboardType: TextInputType.text,
              enableInteractiveSelection: true,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Description",
                fillColor: Color(0xffe3e3e3),
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: EdgeInsets.all(8),
            child: RaisedButton(
              child: Text(
                "Confirm",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              elevation: 5,
              disabledColor: Colors.lightBlue[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          automaticallyImplyLeading: false,
          title: Container(
            child: Text(
              'Send money',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff212121),
                fontSize: 22.0,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 40),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Card',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Bank',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [sendCard(), Text('')],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          onPressed: () {},
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
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
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
      ),
    );
  }
}
