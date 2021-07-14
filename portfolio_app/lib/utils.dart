import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/specialization.dart';

class utils {
  BottomSheet(context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'I am Noman',
                style: GoogleFonts.pacifico(color: Colors.white, fontSize: 27),
              ),
              Text(
                'Mobile & Web Developer',
                style: GoogleFonts.almendra(
                    color: Colors.white, fontSize: 15, wordSpacing: 5),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Specialization',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text('View all',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 2,
                                                color: Colors.black)))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SpecializationWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
