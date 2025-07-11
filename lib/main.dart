// flutter imports
import 'package:flutter/material.dart';

// package imports
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// project imports
import 'pages/search_page/search_page.dart';
import 'services/shared_prefs.dart';
import 'weather_bloc/weather_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs.init();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  late bool isSimplified;
  @override
  void initState() {
    isSimplified = SharedPrefs.getIsSimplified() ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => WeatherBloc(),
        child: SearchPage(isSimplified: isSimplified),
      ),
    );
  }
}
