import 'package:flutter/material.dart';
import 'package:newsapp_v2/Services/api_services.dart';
import 'package:newsapp_v2/models/articles.dart';

class FeedsScreen extends StatefulWidget {
  @override
  _FeedsScreenState createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  ApiServices apiServices = ApiServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Feeds"),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Feeds",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: FutureBuilder<News>(
                        future: apiServices.getEverything(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<Article> list = snapshot.data.articles;

                            return ListView.builder(
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                Article articles = list[index];

                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Column(
                                            children: [
                                              Image.network(
                                                articles.urlToImage,
                                                fit: BoxFit.cover,
                                                height: 150,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      articles.title,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Divider(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      articles.description,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                      maxLines: 4,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          } else {
                            return Center(child: CircularProgressIndicator());
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
