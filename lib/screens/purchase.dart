import 'package:flutter/material.dart';

class purchase_screen extends StatefulWidget {
  const purchase_screen({super.key});

  @override
  State<purchase_screen> createState() => _purchase_screenState();
}

class _purchase_screenState extends State<purchase_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('lib/images/p2.jpg'))),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 30),
                      child: Text(
                        'Membership',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 100, horizontal: 30),
                      child: Text(
                        'PANEL',
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
