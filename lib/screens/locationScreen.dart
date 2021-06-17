import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {

  final locationWeather;
  LocationScreen({this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  double? temperature;
  int? condition;
  String? cityName;

  @override
  void initState() {
    updateWeather(widget.locationWeather);
    super.initState();
  }

  void updateWeather(weatherLocation){
    temperature = weatherLocation['main']['temp'];
    condition = weatherLocation['weather'][0]['id'];
    cityName = weatherLocation['name'];
    print(temperature);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Report'),
      ),
      body: Container(
        child: Text('Nuhin'),
      ),
    );
  }
}
