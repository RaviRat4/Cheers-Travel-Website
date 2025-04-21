import 'package:cheers_travel_website/top_flight_offers.dart';
import 'package:cheers_travel_website/travel_guides.dart';
import 'package:cheers_travel_website/usb_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'economised_fares.dart';
import 'header.dart';
import 'footer.dart';
import 'footer_above.dart';
import 'search_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cheers Travel',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Cheers Travel'),
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderSection(),
              FlightBookingSection(),
              UsbSection(),
              TopFlightOffers(),
              TravelGuidesSection(),
              LuxuriousTreatmentSection(),
               HelpSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
