class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  //constructor
  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.maxTemp,
      required this.minTemp,
      required this.temp,
      required this.weatherCondition});
  //factory constructor from json
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
            ['text']);
  }
}
