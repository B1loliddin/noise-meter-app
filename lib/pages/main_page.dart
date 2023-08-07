import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(width: 30, height: 30, color: Colors.red),
                  Container(width: 30, height: 30, color: Colors.green),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 375,
                    height: 150,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 375,
                    height: 50,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 375 / 4,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 375 / 4,
                  height: 50,
                  color: Colors.lightGreen,
                ),
                Container(
                  width: 375 / 4,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 375 / 4,
                  height: 50,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
