import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hbit Tracker"),
      ),
      body: Center(
        child: Text(
          'No Habits Tracking RN',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
