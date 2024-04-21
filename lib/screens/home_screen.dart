import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('lib/images/2.jpg'))),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 20),
                      child: Text('Hey,  ',
                          style: GoogleFonts.bebasNeue(
                              letterSpacing: 2,
                              fontSize: 31,
                              color: Colors.white)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text(' TALHA',
                            style: GoogleFonts.bebasNeue(
                                letterSpacing: 2,
                                fontSize: 31,
                                color: Colors.green))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, right: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
