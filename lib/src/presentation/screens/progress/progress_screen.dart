import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text('Circular progress indicator'),
          const SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: colors.inversePrimary,
          ),
          const SizedBox(height: 20),
          const Text('Circular progress controlado'),
          const SizedBox(height: 10),
          const _ControlledProgresIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((element) => element < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator(value: progressValue),
              )
            ],
          ),
        );
      },
    );
  }
}
