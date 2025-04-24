import 'package:flutter/material.dart';
import 'flightI_nfo.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlightInfoCard(),
    );
  }
}
