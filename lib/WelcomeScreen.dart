
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/handmade12.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Welcome To Handmade',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Get exclusive limited apparel that only you have ! Made by famous brands in the World! ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                      child: Text('Get started'),
                    ),
                    ElevatedButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/register'),
                        child: Text('Get Started'))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
