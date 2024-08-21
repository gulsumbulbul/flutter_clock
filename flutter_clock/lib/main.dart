import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'ClockModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClockApp(),
    );
  }
}

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  late ClockModel _clockModel;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _clockModel = ClockModel();
    _updateTime();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    _clockModel.updateTime(DateTime.now());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double baseWidth = screenWidth * 0.25;
    final double baseHeight = screenHeight * 0.2;
    final double fontSize = screenHeight * 0.1;

    return Scaffold(
      backgroundColor: HexColor("#FFB6C1"),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => _buildFlipContainer(
                  _clockModel.hoursString, baseWidth, baseHeight, fontSize),
            ),
            SizedBox(width: 4),
            Observer(
              builder: (_) => _buildFlipContainer(
                  _clockModel.minutesString, baseWidth, baseHeight, fontSize),
            ),
            SizedBox(width: 4),
            Observer(
              builder: (_) => _buildFlipContainer(
                  _clockModel.secondString, baseWidth, baseHeight, fontSize),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlipContainer(
      String time, double width, double height, double fontSize) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: HexColor("FFB6C1"),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
