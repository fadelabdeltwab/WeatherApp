import 'package:weather_app/models/weather_model.dart';

// 1: create a state for Weather
class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFaliureState extends WeatherState {
  final String errorMessage;

  WeatherFaliureState(this.errorMessage);
}
