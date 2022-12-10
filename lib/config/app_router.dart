
import 'package:flutter/material.dart';
import 'package:food_app/screens/basket/basket_screen.dart';
import 'package:food_app/screens/checkout/checkout_screen.dart';
import 'package:food_app/screens/delivery_time/delivery_time_screen.dart';
import 'package:food_app/screens/filter/filter_screen.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:food_app/screens/location/location_screen.dart';
import 'package:food_app/screens/restaurant_details/restaurant_details_screen.dart';
import 'package:food_app/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:food_app/screens/voucher/voucher_screen.dart';

class AppRouter{
  static Route onGeneraterRoute(RouteSettings settings){
    print('The Route is: ${settings.name}');
    switch (settings.name){
      case'/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
        default:
          return _errorRoute();
    }
  }

  static const String routeName='/';

  static Route _errorRoute(){
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: '/error'),
    );
  }
}