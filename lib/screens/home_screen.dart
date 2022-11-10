import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BounceInDown(
          child: Container(
            width: 350,
            height: 350,
            color: Colors.red,
            child: const Center(child: Text('hola mundo')),
          ),
        ),
      ),
    );
  }
}
