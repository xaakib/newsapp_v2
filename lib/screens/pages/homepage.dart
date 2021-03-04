import 'package:flutter/material.dart';

import 'subpages/Business.dart';
import 'subpages/entertainment.dart';

class HomePage extends StatelessWidget {
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
                    title: Text(
                      "NewsApp",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
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
                      Buissines(),
                      Entertainment(),
                      Buissines(),
                      Buissines(),
                      Buissines(),
                      Buissines(),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
