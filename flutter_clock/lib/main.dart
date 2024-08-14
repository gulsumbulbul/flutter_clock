import 'package:flutter/material.dart';
import 'dart:async';
import 'package:hexcolor/hexcolor.dart';

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
  String _hoursString = "";
  String _minutesString = "";
  String _secondString = "";

  @override
  void initState() {
    super.initState();
    _hoursString = _hoursTime(DateTime.now());
    _minutesString = _minutesTime(DateTime.now());
    _secondString = _secondTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedHoursTime = _hoursTime(now);
    final String formattedMinutesTime = _minutesTime(now);
    final String formattedSecondsTime = _secondTime(now);

    setState(() {
      _hoursString = formattedHoursTime;
      _minutesString = formattedMinutesTime;
      _secondString = formattedSecondsTime;
    });
  }

  String _hoursTime(DateTime dateTime) {
    return "${dateTime.hour.toString().padLeft(2, '0')}";
  }

  String _minutesTime(DateTime dateTime) {
    return "${dateTime.minute.toString().padLeft(2, '0')}";
  }

  String _secondTime(DateTime dateTime) {
    return "${dateTime.second.toString().padLeft(2, '0')}";
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
            _buildFlipContainer(_hoursString, baseWidth, baseHeight, fontSize),
            SizedBox(width: 4),
            _buildFlipContainer(
                _minutesString, baseWidth, baseHeight, fontSize),
            SizedBox(width: 4),
            _buildFlipContainer(_secondString, baseWidth, baseHeight, fontSize),
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
