// fluitter imports
import 'package:flutter/material.dart';

// project imports
import '../../../weather_bloc/weather_bloc.dart';
import '../data_page_widgets_simplified/HumiditySimplified.dart';
import '../data_page_widgets_simplified/VisibilitySimplified.dart';
import '../data_page_widgets_simplified/WindSpeedSimplefied.dart';
import 'icon_degree_banner.dart';
import 'place_data_time_information.dart';
import 'pressure_information.dart';
import 'sun_times_banner.dart';
import 'weather_description.dart';


class DataPageContent extends StatelessWidget {
  const DataPageContent({
    super.key,
    required this.cityName,
    required this.state,
  });

  final String cityName;
  final SearchedState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PlaceDataTimeInformation(
              cityName: cityName,
              date: state.weatherModel.date,
            ),
            const SizedBox(
              height: 30,
            ),
            IconDegreeBanner(
              icon: state.weatherModel.icon,
              temperature: state.weatherModel.temperature,
            ),
            const SizedBox(
              height: 30,
            ),
            WeatherDescription(
              description: state.weatherModel.description,
            ),
            const SizedBox(
              height: 40,
            ),
            PressureInformation(
              pressure: state.weatherModel.pressure,
            ),
            WindSpeedSimplefied(speed: state.weatherModel.speed),
            HumiditySimplified(
                humidity: state.weatherModel.humidity,
            ),
            VisibilitySimplified(visibility: state.weatherModel.visibility),
            const SizedBox(
              height: 30,
            ),
            SunTimesBanner(
              sunrise: state.weatherModel.sunrise,
              sunset: state.weatherModel.sunset,
            ),




          ],
        ),
      ),
    );
  }
}