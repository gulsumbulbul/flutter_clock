import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'ClockViewModel.dart';
import 'package:hexcolor/hexcolor.dart';

class ClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<clockViewModel>(context);

    return Scaffold(
      backgroundColor: HexColor("#FFB6C1"),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) => _buildFlipContainer(
                viewModel.hoursString,
                MediaQuery.of(context).size.width * 0.25,
                MediaQuery.of(context).size.height * 0.2,
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            SizedBox(width: 4),
            Observer(
              builder: (_) => _buildFlipContainer(
                viewModel.minutesString,
                MediaQuery.of(context).size.width * 0.25,
                MediaQuery.of(context).size.height * 0.2,
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
            SizedBox(width: 4),
            Observer(
              builder: (_) => _buildFlipContainer(
                viewModel.secondString,
                MediaQuery.of(context).size.width * 0.25,
                MediaQuery.of(context).size.height * 0.2,
                MediaQuery.of(context).size.width * 0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
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
