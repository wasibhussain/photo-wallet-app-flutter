import 'package:firstproject/firstpage.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class TruePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
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
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          width: 500,
                          height: 205,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage("assets/newimages/1.jpg")),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                            color: Colors.redAccent,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
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
                      Text("True", style: TextStyle(color: Color(0xfff50707), fontSize: 30, fontWeight: FontWeight.bold)),
                      SizedBox(height: 2,),
                      
                      SizedBox(height: 15,),
                      
                      Container(
                          width: 150,
                          child: RaisedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
                          },
                          color: Color(0xfff50707),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: Text("Lets Go", style: TextStyle(color: Colors.white, fontSize: 18,)),
                          ),
                      ),
                    ],
                    ),
                                ),
                        ),
                            ],
                          ),
                  ),
                ),
              ),
            ),
           ])
    );
  }
}