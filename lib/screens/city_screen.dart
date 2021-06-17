import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: null,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Get Weather',
                  style: TextStyle(

                  ),
                )),
          ],
        ),
      ),
    );
  }
}