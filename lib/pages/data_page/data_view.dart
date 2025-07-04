// flutter imports
import 'package:flutter/material.dart';

// project imports
import '../../weather_bloc/weather_bloc.dart';
import 'data_page_widgets_regular/data_page_content.dart';
import 'data_page_widgets_simplified/data_page_content_simplified.dart';

class DataView extends StatelessWidget {
  const DataView({
    super.key,
    required this.cityName,
    required this.state,
    required this.isSimplified,
  });

  final String cityName;
  final SearchedState state;
  final bool isSimplified;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (buildContext, boxConstraints) {
        if (isSimplified) {
          return DataPageContentSimplified(cityName: cityName, state: state);
        } else {
          return DataPageContent(cityName: cityName, state: state);
        }
      },
    );
  }
}