import 'package:flutter/material.dart';
import 'package:kahvefali/screen/home_page.dart';
import 'package:kahvefali/screen/main_home_page.dart';
import 'package:kahvefali/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: MaterialButton(
          height: 50,
          elevation: 0,
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainHomePage(),
            ),
          ),
          child: const Text('İlerle'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(ResimYollari.yol),
                radius: 75,
              ),
              Center(
                child: Text(
                  'Hoşgeldiniz',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
