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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    height: 200,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            articles.urlToImage,
                                            fit: BoxFit.cover,
                                            height: 200,
                                            width: 250,
                                          ),
                                          Positioned(
                                              bottom: 10,
                                              child: Padding(
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
                                                        fontSize: 12,
                                                        color: Colors.white,
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
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
    );
  }
}
