import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

import '../../models/weather_model.dart';
import '../../services/weather_service.dart';

// 2:create cubit class
class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  WeatherModel? weatherModel;
  // 3:create method
  getWeather({required String cityName}) async {
    try {
      weatherModel =
          (await WeatherService(Dio()).getCurrentWeather(cityName: cityName))!;
      emit(WeatherLoadedState(weatherModel!));
    } catch (e) {
      emit(
        WeatherFaliureState(e.toString()),
      );
    }
  }
}
