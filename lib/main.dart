import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Personalizados
// import 'package:componentes_flutter/src/pages/home_temp.dart';
import 'package:componentes_flutter/src/routes/routes.dart';
import 'package:componentes_flutter/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'), // Hebrew, no country code
        ],
        title: 'Material App',
        // home: HomePage(),
        initialRoute: '/',
        routes: getApplicationRoutes(),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertPage());
        });
  }
}
