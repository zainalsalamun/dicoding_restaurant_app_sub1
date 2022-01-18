import 'package:flutter/material.dart';
import 'package:restaurant_app_sub1/component/theme.dart';
import 'package:restaurant_app_sub1/model/restaurant_model.dart';
import 'package:restaurant_app_sub1/pages/detail_restaurant.dart';
import 'package:restaurant_app_sub1/pages/home_page.dart';
import 'package:restaurant_app_sub1/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,

    theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: Colors.blue,
        scaffoldBackgroundColor: primaryColor,
        textTheme: myTextTheme,

      ),
      initialRoute: HomePage.routeName,
      routes: {
             '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        RestaurantDetailPage.routeName: (context) => RestaurantDetailPage(
          restaurant: ModalRoute.of(context)?.settings.arguments as Restaurant,
        ),
      },
    );
  }
}
