import 'package:flutter/material.dart';
// import 'package:user/models/businessLayer/baseRoute.dart';

class ImageViewScreen extends StatefulWidget {
  final String? url;
  ImageViewScreen({this.url});

  @override
  _ImageDetilsScreenState createState() => _ImageDetilsScreenState(this.url);
}

class _ImageDetilsScreenState extends State<ImageViewScreen> {
  String? url;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isReadyToCheckOut = false;
  _ImageDetilsScreenState(this.url) : super();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return false;
        },
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(),
          body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(url!)),
              )),
        ));
  }

  @override
  void initState() {
    super.initState();
  }
}
