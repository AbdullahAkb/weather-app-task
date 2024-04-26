import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app_task/data/models/weather_model.dart';
import 'package:weather_app_task/data/services/api_services/api_services.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitialState()) {
    on<CityWeatherEvent>(_fetchWeatherByCity);
  }

  Future _fetchWeatherByCity(
      CityWeatherEvent event, Emitter<WeatherState> emit) async {
    ApiServices apiServices = ApiServices();
    WeatherModel model =
        await apiServices.fetchWeatherByCityName(event.cityName);
    print(model);
    emit(WeatherDataState());
  }
}
