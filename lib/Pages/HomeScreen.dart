
import 'package:fitness_app/Pages/exersice_hub.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/Pages/onBourding.dart';
class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final String apiURl = "https://raw.githubusercontent.com/codeifitech/fitness-app/master/exercises.json";
Future<exercise> exercisehub;
@override
void initState()
{
  super.initState();
}

Future<exercise> getExercise() async {

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start ,
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back_sharp), onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onbordingscreen()));
            }
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),

        ),
      ),
    );
  }
}
