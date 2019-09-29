import 'package:flutter/material.dart';
class HomeScreenTopPart extends StatefulWidget {
  HomeScreenTopPart({Key key}) : super(key: key);

  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         leading: Icon(Icons.search),
         actions: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right: 16.0),
             child: Icon(Icons.search),
           )
         ],
       ),
    );
  }
}