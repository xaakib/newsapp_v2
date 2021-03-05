import 'package:flutter/material.dart';
import 'package:newsapp_v2/Services/api_services.dart';
import 'package:newsapp_v2/models/articles.dart';
import 'package:newsapp_v2/screens/Details_screen.dart';
import 'package:newsapp_v2/widgets/poster_screen.dart';

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
        child: SingleChildScrollView(
          child: Container(
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

                        return NewsPost(
                          articles: articles,
                        );
                      },
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ),
        ),
      ),
    );
  }
}
