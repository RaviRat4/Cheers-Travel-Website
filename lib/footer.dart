import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Wrap(
            runSpacing: 20,
            spacing: 20,
            alignment: WrapAlignment.spaceBetween,
            children: [
              // Logo + Description
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/cheers-logo.png', height: 60),
                    const SizedBox(height: 10),
                    const Text(
                      "Cheers Travel stands as one of the largest retail & online travel agencies. We have our Head office in Murray Bridge, Adelaide , South Australia, and our contact centre in India.",
                      style: TextStyle(height: 1.6, fontSize: 13, color: Color(0xff5d6f7d)),
                    ),
                    const SizedBox(height: 6),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/aboutus'),
                      child: const Text(
                        "Know More >>",
                        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),

              // Menu Sections
              footerMenu(context, "Who We are", {
                "Home": "/",
                "About Us": "/",
                "Contact Us": "/",
                "Faq": "/faq",
              }),

              footerMenu(context, "Destinations", {
                "Brisbane": "/",
                "Ballina": "/",
                "Gold Coast": "/",
                "Melbourne": "/",
                "Sydney": "/",
              }),

              footerMenu(context, "Support", {
                "Privacy Policy": "/",
                "Terms and Conditions": "/",
                "Website Terms of Use": "/",
                "Customer Support": "/",
              }),

              // Payment & Partners
              SizedBox(
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("We Accept", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff003a75), fontSize: 15)),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/payment.png', height: 32),

                    const SizedBox(height: 20),
                    const Text("Our Partners", style: TextStyle(color: Color(0xff455873), fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Image.asset('assets/images/partnerLogo.jpg', height: 72),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Bottom Bar
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.3)),
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "© Copyright 2025, Cheers Travel All Rights Reserved.",
                      style: TextStyle(color: Color(0xff5d6f7d), fontSize: 13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      linkText(context, "Terms and Conditions", "/"),
                      linkText(context, "Privacy Policy", "/"),
                      linkText(context, "Customer Support", "/"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget footerMenu(BuildContext context, String title, Map<String, String> items) {
    return SizedBox(
      width: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xff003a75), fontSize: 15)),
          const SizedBox(height: 20),
          for (var entry in items.entries)
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, entry.value),
                child: Text(
                  entry.key,
                  style: const TextStyle(
                    color: Color(0xff47525c),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget linkText(BuildContext context, String label, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xff022f5d),
          fontWeight: FontWeight.bold,
          fontSize: 12,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
