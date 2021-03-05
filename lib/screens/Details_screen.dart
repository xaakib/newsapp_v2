import 'package:flutter/material.dart';
import 'package:newsapp_v2/models/articles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
    @required this.articles,
  }) : super(key: key);

  final Article articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            elevation: 0,
            backgroundColor: Colors.white,
            expandedHeight: 30.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                articles.title,
                style: TextStyle(color: Colors.black),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Hero(
                        tag: articles.urlToImage,
                        child: Image.network(articles.urlToImage))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
