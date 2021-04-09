import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' show builder;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_strategy/url_strategy.dart';
import 'route/app_module.dart';

Future<void> main() async {
  setPathUrlStrategy();
    runApp(
        ModularApp(
            module: AppModule(),
            child: MyApp()
        )
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('vi'),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: "jh98",
      theme: ThemeData(primarySwatch: Colors.teal),
      builder: builder,
      home: MyApp(),
    ).modular();
  }
}
