import 'dart:ffi';

import 'package:flutter/cupertino.dart';
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
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 100, horizontal: 30),
                          child: Text(
                            'Membership',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 100, horizontal: 0),
                          child: Text(
                            'PANEL',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.8)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
