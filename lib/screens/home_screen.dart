import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                fit: BoxFit.cover, image: AssetImage('lib/images/1.jpg'))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                        border: Border.all(color: Colors.green, width: 2)),
                    child: CircleAvatar(
                      backgroundColor: Colors.lime,
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print('tab');
              },
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      //borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(0.4)),
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        //                      borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                      child: Icon(Icons.play_arrow),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 20),
                      child: Text('find  ',
                          style: GoogleFonts.bebasNeue(
                              letterSpacing: 2,
                              fontSize: 31,
                              color: Colors.white)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Text('Your Work',
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
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color.fromARGB(255, 2, 6, 2),
                            width: 1)),
                    child: Icon(Icons.filter_alt_outlined),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                          hintText: 'Search'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
