import 'package:flutter/material.dart';
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
