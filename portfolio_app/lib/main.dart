import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool press = false;
  utils _utils = utils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.grey[900],
                        Colors.black,
                        Colors.black,
                        Colors.grey[900],
                        Colors.black,
                        Colors.black,
                      ]),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45, spreadRadius: 8, blurRadius: 10)
                  ]),
              child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/image4.png',
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 230,
              child: Column(
                children: [
                  Text(
                    'Hello!',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  Text(
                    'I am Noman',
                    style:
                        GoogleFonts.pacifico(color: Colors.white, fontSize: 27),
                  ),
                  Text(
                    'Mobile & Web Developer',
                    style:
                        GoogleFonts.almendra(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {
                        launchWhatsApp();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'HIRE ME',
                          style: GoogleFonts.cutiveMono(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    iconButton(
                      FontAwesomeIcons.instagram,
                    ),
                    iconButton(
                      FontAwesomeIcons.facebook,
                    ),
                    iconButton(
                      FontAwesomeIcons.twitter,
                    ),
                    iconButton(
                      FontAwesomeIcons.github,
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 30,
              right: 20,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    icon: FaIcon(
                      FontAwesomeIcons.gripLines,
                    ),
                    onPressed: () {
                      setState(() {});
                      _utils.BottomSheet(context);
                    }),
              ))
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+92-(307)9665448',
      text: "Hey! I want to hire you.",
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }
}

Widget iconButton(icon) {
  return IconButton(
      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
      icon: FaIcon(
        icon,
        color: Colors.white,
      ),
      onPressed: () {
        print("Pressed");
      });
}
