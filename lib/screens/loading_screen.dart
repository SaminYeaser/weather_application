import 'package:flutter/material.dart';
import 'package:weather/screens/locationScreen.dart';
import 'package:weather/services/location.dart';

import 'package:weather/services/networking.dart';

const apiKey = '71b080b488627db52f279b053e9df166';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;
  var weatherData;

  @override
  void initState() {
    setState(() {
      getLocation();
    });
    super.initState();
  }

  Future<void> getLocation() async {
    Location obj = new Location();
    await obj.getCurrentLocation();
    latitude = obj.latitude;
    longitude = obj.longitude;

    NetworkHelper netHelper = new NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');

    weatherData = await netHelper.getDate();

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherData,);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return  weatherData == null ? Center(child: CircularProgressIndicator()) :
      Column(
        children: [

        ],
      );
  }
}
