import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left: Logo
          Row(
            children: [
              Image.asset(
                'assets/images/cheers-logo.png', // Add your image to assets folder
                width: 270,
              ),
            ],
          ),

          // Center: Navigation
          Row(
            children: [
              Row(
                children: [
                  navItem("Home", isActive: true),
                  navItem("About Us"),
                  navItem("Contact Us"),
                  navItem("Secure Today's Price"),
                  navItem("My Account", hasDropdown: true),
                ],
              ),
              // Right: Phone & Time
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xFF003D99),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: const Icon(Icons.phone, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 15,),
                      Text("04 89994765", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0XFF666666),height: 0.9,)),
                      Text("08 70952590", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0XFF666666),height: 1,)),
                      Text(
                        "08:30 AM - 00:30 AM AEST",
                        style: TextStyle(color: Colors.red, fontSize: 11.5, fontWeight: FontWeight.bold, height: 0),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget navItem(String title, {bool isActive = false, bool hasDropdown = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: isActive ? FontWeight.bold : FontWeight.bold,
              color: isActive ? Color(0XFF0c44ac) : Colors.black,
            ),
          ),
          if (hasDropdown)
            const Icon(Icons.arrow_drop_down, size: 20),
          if (isActive)
            const Padding(
              padding: EdgeInsets.only(top: 18),
              child: SizedBox(
                height: 2,
                width: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Color(0XFF0c44ac)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
