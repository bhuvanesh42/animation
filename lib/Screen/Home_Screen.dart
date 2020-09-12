import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.asset('assets/lottie/programming.json'),),
      
    );
  }
}