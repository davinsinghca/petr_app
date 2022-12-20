import 'package:flutter/material.dart';
import '../widgets/petr_card.dart';

class UpcomingDropsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Upcoming Drops',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: PetrCard(),
    );
  }
}
