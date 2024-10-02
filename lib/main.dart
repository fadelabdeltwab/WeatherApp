import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import flutter_bloc for BlocProvider
import 'package:weather_app/views/home_view.dart';

import 'cubits/get_weather_cubit/get_weather_cubit.dart'; // Ensure the path is correct

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    //4:provide the cubit to the app
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
