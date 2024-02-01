import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _feedpageState();
}

class _feedpageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          height: 250,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Get Loan Offers up to  rupees, \u20B950,000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Complete your profile and work details and get best loan Offers '),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Check Loan Offers Up to 50000')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Know More'))
            ],
          )),
    );
  }
}
