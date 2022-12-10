import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName='/';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
      child: ElevatedButton(
        style:
        ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
        child: Text('Location Screen',
          style: Theme.of(context)
              .textTheme
              .headline3
              //.copyWith(color: Colors.white)
        ),
        onPressed: (){
          Navigator.pushNamed(context, '/location');
        },
      ),
      ),
    );
  }
}