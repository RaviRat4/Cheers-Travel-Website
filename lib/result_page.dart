import 'package:flutter/material.dart';

import 'header.dart';
import 'matrix_airline.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xfff0f2f5),
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              HeaderSection(),
              SizedBox(height: 20,),
              Container(
                width: 1200,
                child: Column(
                  children: [
                    AirlineFareCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

