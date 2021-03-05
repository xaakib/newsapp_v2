import 'package:flutter/material.dart';

class Buissines extends StatefulWidget {
  @override
  _BuissinesState createState() => _BuissinesState();
}

class _BuissinesState extends State<Buissines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Featured",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return featuredWidgets();
                    }),
              ),
            ],
          )),
    );
  }

  Widget featuredWidgets() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            height: 160,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.network(
                    "https://images.unsplash.com/photo-1525289792754-f023db9583fa?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAwfHxuZXdzJTIwdHZ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    fit: BoxFit.cover,
                    height: 160,
                    width: 140,
                  ),
                  Positioned(
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Use this to page through the \nresults if the total results found is greater \nthan the page size",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(
                              height: 5,
                            ),
                            Text(
                              "4 hours ago",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
