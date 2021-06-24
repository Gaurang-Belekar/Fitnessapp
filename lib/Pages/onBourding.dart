import 'package:fitness_app/Pages/Start.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:fitness_app/Pages/HomeScreen.dart';
class onbordingscreen extends StatefulWidget {


  @override
  _onbordingscreenState createState() => _onbordingscreenState();
}

// ignore: camel_case_types
class _onbordingscreenState extends State<onbordingscreen> {
  double _deviceHeight;
  double _deviceWidth;
  var pages = [
    PageViewModel(
      title: "Title of first page",
      body: "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: Image.asset('Assets/intro1.jpg'),
      ),
    ),
    PageViewModel(
      title: "Title of first page",
      body: "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: Image.asset('Assets/intro2.jpg'),
      ),
    ),
    PageViewModel(
      title: "Title of first page",
      body: "Here you can write the description of the page, to explain someting...",
      image: Center(
        child: Image.asset('Assets/intro3.png'),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(right: 0.1)),
            Padding(padding: EdgeInsets.only(right: 0.0),
            child : IconButton(icon: Icon( Icons.arrow_back, color: Colors.white,), onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder : (context) => startPage()));
            })),
            Text(
              "Fitness App",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                fontFamily: 'Sans_Pro',
              ),
            ),

          ],
        ),

      ),
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
        onSkip: () {
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
          // You can also override onSkip callback
        },
        showSkipButton: true,
        skip: const Text("Skip", style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Roboto')),
        next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600 ,fontFamily: 'Roboto')),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Roboto')),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.lightBlue,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)
            )
        ),
      ),
    );
  }
}
