import 'package:flutter/material.dart';
import 'package:food_app/config/app_router.dart';
import 'screens/home/home_screen.dart';
import 'config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Deliverey',
      theme: theme(),
      onGenerateRoute: AppRouter.onGeneraterRoute,
      initialRoute: HomeScreen.routeName ,
    );
  }
}
