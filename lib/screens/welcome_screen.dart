import 'package:chatwe/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatwe/screens/registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatwe/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  // Widget animatedDisplayText(String text) {
  //   return;
  // }
  // Text(
  // 'ChatWe',
  // style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900),
  // );

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Welcome To',
                          textStyle: TextStyle(fontSize: 35.0),
                        ),
                        TypewriterAnimatedText('ChatWe'),
                      ],
                      pause: Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      repeatForever: false,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48.0),
            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'log in',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Colors.blueAccent,
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
