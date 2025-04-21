import 'package:flutter/material.dart';

class TopFlightOffers extends StatelessWidget {
  final List<Map<String, String>> offers = [
    {"title": "Indonesia", "image": "assets/images/offersImage1.png"},
    {"title": "Thailand", "image": "assets/images/offersImage2.jpg"},
    {"title": "Vietnam", "image": "assets/images/offersImage3.jpg"},
    {"title": "Malaysia", "image": "assets/images/offersImage4.jpg"},
    {"title": "Japan", "image": "assets/images/offersImage5.jpg"},
    {"title": "Philippines", "image": "assets/images/offersImage6.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Top Flight Offers',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Cheers Travel stands as one of the largest retail and online travel agencies. Accessing budget-friendly flights is easy; you can visit us at our office in Murray Bridge, call our contact centre, or simply explore our website',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff434343),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 30),
          GridView.builder(
            shrinkWrap: true,
            itemCount: offers.length,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (context, index) {
              final offer = offers[index];
              return Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      offer['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          offer['title']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'View Flights',
                            style: TextStyle(
                              color: Color(0xff0c44ac),
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          TextButton.icon(
            onPressed: () {},
            label: const Text("Search more Flights", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0xff0c44ac)),),
            icon: const Icon(Icons.arrow_forward, color: Color(0xff0c44ac)),
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Color(0xff0c44ac)),
            ),
          )
        ],
      ),
    );
  }
}
