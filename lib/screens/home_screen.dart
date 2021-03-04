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
              length: 6,

              //// this is for appbar//
              child: Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    leading: IconButton(
                      onPressed: () {},
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
                              'Business',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Entertainment',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'General',
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
                            'Sports',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        )),
                        Tab(
                            child: Container(
                          child: Text(
                            'Technology',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        )),
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
