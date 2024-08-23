import 'package:flutter/material.dart';
import 'package:flutter_clock/ClockView.dart';
import 'package:flutter_clock/ClockViewModel.dart';
import 'dart:async';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<clockViewModel>(create: (_) => clockViewModel()),
      ],
      child: MaterialApp(
        home: ClockApp(),
      ),
    );
  }
}

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    final viewModel = Provider.of<clockViewModel>(context, listen: false);
    _updateTime(viewModel);
    _timer = Timer.periodic(
        Duration(seconds: 1), (Timer t) => _updateTime(viewModel));
  }

  void _updateTime(clockViewModel viewModel) {
    viewModel.updateTime(DateTime.now());
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClockView();
  }
}
