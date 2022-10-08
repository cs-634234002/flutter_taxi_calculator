import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/main/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = const Duration(seconds: 5);
    Future.delayed(
      d,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Main(),
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
            //width: double.infinity,
            //height: double.infinity,
            child: Image.asset('images/taxi.gif'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: AnimatedTextKit(animatedTexts: [
              WavyAnimatedText(
                "TAXI PRICE CALCULATOR",
                textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue),
                textAlign: TextAlign.center,
                speed: const Duration(milliseconds: 200),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
