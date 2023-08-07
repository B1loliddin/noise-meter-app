import 'package:flutter/material.dart';
import 'package:noise_meter_app/pages/main_page.dart';

class NoiseMeterApp extends StatelessWidget {
  const NoiseMeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
