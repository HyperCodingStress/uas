import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:uas/Controller/route.dart';
import 'package:uas/menu.dart';

void main() => runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
  home: Main(),
));

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "uas",
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(108.7 * 3.14159 / 180),
              stops: [0.11, 0.882],
              colors: [
                Color.fromRGBO(221, 22, 224, 1),
                Color.fromRGBO(111, 22, 190, 1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  '../assets/Playloop_text.png',
                  height: 300,
                  width: 300,
                ),
              ),
              NiceButtons(
                stretch: false,
                progress: true,
                gradientOrientation: GradientOrientation.Horizontal,
                endColor:  Color.fromRGBO(221, 22, 224, 1),
                startColor: Color.fromRGBO(111, 22, 190, 1) ,
                borderColor: Color.fromRGBO(111, 22, 190, 1),
                borderThickness: 3,
                borderRadius: 20,
                onTap: (finish) {
                  print('berhasil');
                  Timer(Duration(seconds: 3), () {
                    Navigator.pushNamed(context, '//');
                    finish();
                  });
                },
                child: Text(
                  'Next ->',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
