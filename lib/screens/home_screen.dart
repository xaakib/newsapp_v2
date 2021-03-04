import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'pages/homepage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: DefaultTabController(
              length: 5,

              //// this is for appbar//
              child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    elevation: 0,

                    // backgroundColor: Color(0xff109618),
                    backgroundColor: Colors.white,

                    title: Image.asset("assets/images/wevaicon.png",
                        fit: BoxFit.cover, height: 50, width: 70),

                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {
                        print("Menu");
                        showDialog(
                          context: context,
                          builder: (conetx) {},
                        );
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    actions: [
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {}),
                    ],

                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
                      indicatorWeight: 6.0,
                      onTap: (index) {},
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Salon',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Health',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'BOOK',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'BOOK',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: TabBarView(
                    children: <Widget>[
                      HomePage(),
                      HomePage(),
                      HomePage(),
                      HomePage(),
                      HomePage(),
                    ],
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.black38,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.favorite, color: Colors.white, size: 30),
          Icon(Icons.add_alert, color: Colors.white, size: 30),
          Icon(Icons.hotel, color: Colors.white, size: 30),
          Icon(Icons.inbox, color: Colors.white, size: 30),
          Icon(Icons.menu, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
