import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    color: Colors.red,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
