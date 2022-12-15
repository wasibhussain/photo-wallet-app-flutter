import 'package:firstproject/addition.dart';
import 'package:firstproject/true.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'false.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculator",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    routes: {
      "/Home": (context) => HomePage()
    },
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController dateController= TextEditingController();
  var number= "1";
  var a;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/bg.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("Number", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                      SizedBox(height: 20,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Container(
                                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xfffffafa), Color(0xffffe6e6)]
                          )),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                        children: [
                          SizedBox(height: 10,),
                          TextField(
                            controller: dateController,
                            decoration: InputDecoration(
                                  hintText: "1",
                                  labelText: "Enter Number",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 150,
                            child: RaisedButton(onPressed: (){
                                setState(() {
                                    a = dateController.text;
                                    a != number
                            ? Navigator.push(context, MaterialPageRoute(builder: (context) => FalsePage()))
                            : Navigator.push(context, MaterialPageRoute(builder: (context) => TruePage()));
                                });
                            },
                            color: Color(0xfff50707),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: Text("Go", style: TextStyle(color: Colors.white, fontSize: 18,)),
                            ),
                          ),
                        ],
                        ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           ])
        );
  }
}