import 'package:fitness_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome_screen extends StatefulWidget {
  const Welcome_screen({super.key});

  @override
  State<Welcome_screen> createState() => _Welcome_screenState();
}

class _Welcome_screenState extends State<Welcome_screen> {
  final List<String> levels = [
    'In_Active',
    'BEGINNER',
    'expert',
    'outstanding'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('lib/images/1.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text('HARD',
                      style: GoogleFonts.bebasNeue(
                          letterSpacing: 2, fontSize: 31, color: Colors.white)),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Text('  Element',
                        style: GoogleFonts.bebasNeue(
                            letterSpacing: 2,
                            fontSize: 31,
                            color: Colors.green))),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'ABOUT ME',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'we want to know more about  you ,\n follow the next steps to comp',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: levels.length,
                      itemBuilder: (BuildContext context, child) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 50),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'I am',
                                      style: GoogleFonts.lato(
                                          color: Colors.green,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "$levels",
                                      style: GoogleFonts.lato(
                                          color: Colors.green,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'i have Never Trained',
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromRGBO(23, 21, 21, 0.881)),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: Text(
                            "SKIP",
                            style: GoogleFonts.lato(
                                color: Colors.white30,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 20),
                      child: Container(
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => homescreen()));
                            },
                            icon: Text('NEXT')),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
