import 'package:fitness_app/Pages/onBourding.dart';
import 'package:flutter/material.dart';
class startPage extends StatefulWidget {
  //const startPage({Key? key}) : super(key: key);

  @override
  _startPageState createState() => _startPageState();
}

class _startPageState extends State<startPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double w = screenSize.width;
    double h = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(child : Text('Welcome')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(w*0.3, h*0.62, w*0.0, h*0.1),
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               primary: Colors.blueAccent,
             ),
             child: Text("Ready to Go!", style: TextStyle(fontSize: 20.0),),
             //highlightedBorderColor: Colors.red,
             //color: Colors.pink,
             //shape: RoundedRectangleBorder(
             //borderRadius: BorderRadius.circular(15)),
             onPressed: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onbordingscreen()));
        },
          ),
          ),
        ],
      ),
    );
  }
}
