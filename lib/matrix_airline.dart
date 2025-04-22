import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AirlineFareCard extends StatelessWidget {
  const AirlineFareCard({super.key});

  @override
  Widget build(BuildContext context) {
    final airlines = [
      {
        "name": "SriLankan Airlines",
        "image": "assets/images/ul.png",
        "nonStop": "--",
        "oneStop": "£ 716.01"
      },
      {
        "name": "Emirates Airways",
        "image": "assets/images/airlineLogo6.png",
        "nonStop": "--",
        "oneStop": "£ 724.11"
      },
      {
        "name": "Qantas Airlines",
        "image": "assets/images/qf.png",
        "nonStop": "--",
        "oneStop": "£ 771.41"
      },
      {
        "name": "Cathay Pacific",
        "image": "assets/images/cx.png",
        "nonStop": "--",
        "oneStop": "£ 775.41"
      },
      {
        "name": "Qantas Airways",
        "image": "assets/images/qf.png",
        "nonStop": "--",
        "oneStop": "£ 819.61"
      },
      {
        "name": "Emirates Airways",
        "image": "assets/images/airlineLogo6.png",
        "nonStop": "--",
        "oneStop": "£ 724.11"
      },
      {
        "name": "Qantas Airlines",
        "image": "assets/images/qf.png",
        "nonStop": "--",
        "oneStop": "£ 771.41"
      },
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Side: Alternative Dates
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.calendar_month, size: 32, color: Colors.blue),
                const SizedBox(height: 8),
                const Text(
                  "Alternative Dates",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Save £293.10 | £455.01\nHere are the cheapest Deals for 6-day trips",
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "View Alternative Dates",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),
        // Right Side: Best Fares Carousel
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Best Fare by Airlines Book Today",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 180,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 1 / 6, // 6 cards per screen width
                        disableCenter: true,
                        padEnds: false,
                      ),
                      items: airlines.map((airline) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                border: const Border(
                                  top: BorderSide(color: Color(0XFFd8d8d8), width: 0.5),
                                  right: BorderSide(color: Color(0XFFd8d8d8), width: 0.5),
                                ),
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: Image.asset(
                                        airline['image']!,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      airline['name']!,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    Text("Non Stop: ${airline['nonStop']}", style: const TextStyle(fontSize: 10)),
                                    Text("1+ Stop: ${airline['oneStop']}", style: const TextStyle(fontSize: 10)),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "Fares for our carriers are round trip, incl. all taxes and all fees. Airfares include applied Booking Bonus. Additional baggage.",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Handle your hyperlink logic here
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "View All Airlines",
                        style: TextStyle(
                          color: Color(0xff0c44ac),
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}