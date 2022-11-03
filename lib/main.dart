import 'package:classified_app_ui/navigation/myroutes.dart';
import 'package:classified_app_ui/screens/HomeScreen.dart';
import 'package:classified_app_ui/screens/CreateAdScreen.dart';
import 'package:classified_app_ui/screens/EditAdScreen.dart';
import 'package:classified_app_ui/screens/EditProfileScreen.dart';
import 'package:classified_app_ui/screens/LoginScreen.dart';
import 'package:classified_app_ui/screens/MyAdsScreen.dart';
import 'package:classified_app_ui/screens/ProductDetailScreen.dart';
import 'package:classified_app_ui/screens/RegisterScreen.dart';
import 'package:classified_app_ui/screens/SettingsScreen.dart';
import 'package:classified_app_ui/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: CustomTheme().theme,
debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
