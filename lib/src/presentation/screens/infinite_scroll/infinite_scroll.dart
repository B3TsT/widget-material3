import 'package:flutter/material.dart';

class InfiniteScreen extends StatelessWidget {
  static const String name = 'infinite_screen';
  const InfiniteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}
