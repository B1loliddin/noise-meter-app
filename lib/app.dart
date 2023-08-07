import 'package:flutter/material.dart';
import 'package:noise_meter_app/pages/info_page.dart';
import 'package:noise_meter_app/pages/main_page.dart';
import 'package:noise_meter_app/pages/settings_page.dart';

class NoiseMeterApp extends StatelessWidget {
  const NoiseMeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Raleway'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const MainPage(),
        '/info_page': (BuildContext context) => const InfoPage(),
        '/settings_page': (BuildContext context) => const SettingsPage(),
      },
    );
  }
}
