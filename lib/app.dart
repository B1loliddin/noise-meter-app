import 'package:flutter/material.dart';
import 'package:noise_meter_app/pages/main_page.dart';

class NoiseMeterApp extends StatelessWidget {
  const NoiseMeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      home: const MainPage(),
    );
  }
}
