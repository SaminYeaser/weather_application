import 'package:flutter/material.dart';
import 'package:weather/screens/loading_screen.dart';

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

  void updateWeather(weatherLocation) {
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {

                      },
                      child: Icon(
                        Icons.near_me,
                        size: 50,
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.location_city,
                        size: 50,
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: TextStyle(
                        fontFamily: 'Spartan MB',
                        fontSize: 100.0,
                      )
                    ),
                    Text(
                      '☀️',
                      style: TextStyle(
                        fontSize: 70.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "It's 🍦 time in San Francisco!",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'Spartan MB',
                    fontSize: 60.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
