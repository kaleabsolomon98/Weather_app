// flutter imports
import 'package:flutter/material.dart';

// project imports
import 'package:auto_size_text/auto_size_text.dart';

// project imports
import 'city_form_field.dart';

class SearchPageContentRegular extends StatelessWidget {
  const SearchPageContentRegular({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/weather_logo.png',
            width: MediaQuery.of(context).size.width / 2,
          ),
          const SizedBox(height: 50),
          const AutoSizeText(
            'Search Weather',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          const SizedBox(height: 20),
          CityFormField(searchController: searchController, textFontSize: 15),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
