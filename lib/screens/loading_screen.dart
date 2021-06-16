import 'package:flutter/material.dart';
import 'package:weather/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  void initState() {
    setState(() {
      getLocation();
    });
    super.initState();
  }

  void getLocation() async{
    Location obj = new Location();
    await obj.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${}'),
    );
  }
}
