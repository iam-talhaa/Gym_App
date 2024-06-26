import 'package:fitness_app/screens/models.dart';
import 'package:fitness_app/screens/source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<String> catogories = [
    "lib/images/p1.jpg",
    "lib/images/1.jpg",
    "lib/images/p2.jpg",
    "lib/images/p3.jpg",
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 2)),
                        child: CircleAvatar(
                          child: Text(
                            "T",
                            style: GoogleFonts.sofadiOne(fontSize: 34),
                          ),
                          minRadius: 45,
                          maxRadius: 45,
                          backgroundImage: AssetImage('lib/images/my.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Text('Hey,',
                          style: GoogleFonts.bebasNeue(
                              letterSpacing: 2,
                              fontSize: 31,
                              color: Colors.white)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('TALHA',
                            style: GoogleFonts.bebasNeue(
                                letterSpacing: 2,
                                fontSize: 31,
                                color: Colors.green))),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print('tab');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 20),
                      child: Text('find  ',
                          style: GoogleFonts.bebasNeue(
                              letterSpacing: 2,
                              fontSize: 31,
                              color: Colors.white)),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Text('Your Work',
                            style: GoogleFonts.bebasNeue(
                                letterSpacing: 2,
                                fontSize: 31,
                                color: Colors.green))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, right: 20),
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(107, 255, 249, 249)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Search'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.5)),
                        child: Center(
                          child: Text(
                            my_list[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular Workout',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: catogories.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                            //color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(catogories[index])),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Center(
                        child: Text(
                          'Purchase \$ ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      height: 50,
                      width: 189,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(17)),
                    ),
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
