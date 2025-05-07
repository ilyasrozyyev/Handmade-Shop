import 'package:flutter/material.dart';
import 'package:my_project/CartScreen.dart';
import 'package:my_project/ProfileScreen.dart';
import 'package:my_project/SearchScreen.dart';

import 'WelcomeScreen.dart';
import 'LoginScreen.dart';
import 'RegisterScreen.dart';
import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dispore',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (contex) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => HomeScreen(),
        '/cart': (context) => CartScreen(),
        '/profile': (context) => ProfileScreen(),
         'search' : (contex) => SearchScreen(),
    

      },
    );
  }
}



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Text(
          'Handmade',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}









