part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitialState extends WeatherState {}

class WeatherDataState extends WeatherState {}

class WeatherErrorState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}
