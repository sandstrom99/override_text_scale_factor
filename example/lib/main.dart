import 'package:flutter/material.dart';
import 'package:override_text_scale_factor/override_text_scale_factor.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Override Text Scale Factor',
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OverrideTextScaleFactor(
                child: Container(
                  width: double.infinity,
                  color: Colors.black12,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'This text wont scale to device font scale',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              OverrideTextScaleFactor(
                textScaleFactor: 1.5,
                child: Container(
                  width: double.infinity,
                  color: Colors.black26,
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    'This text has a fixed font scale of 1.5',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                color: Colors.black38,
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'This text will scale to device font scale',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
