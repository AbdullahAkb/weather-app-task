part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class CityWeatherEvent extends WeatherEvent {
  final String cityName;
  const CityWeatherEvent(this.cityName);
  @override
  List<Object> get props => [cityName];
}
