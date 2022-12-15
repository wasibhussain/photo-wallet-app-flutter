import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';


class AdditionPage extends StatefulWidget {
  @override
  State<AdditionPage> createState() => _AdditionPageState();
}

class _AdditionPageState extends State<AdditionPage> {
  final TextEditingController op1 = TextEditingController();
  final TextEditingController op2 = TextEditingController();
  var result = 0;
  var a=0;
  var b=0;
  
  void Sum () {    
    setState(() {
      a = int.parse(op1.text);
      b = int.parse(op2.text);
      result= a+b;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Addition"),
        ),
        
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Image.asset("assets/2.jpg",
            // fit: BoxFit.cover,
            // alignment: Alignment.centerLeft,
            // color: Colors.black.withOpacity(0.7),
            // colorBlendMode: BlendMode.darken,),
            
            Container(             
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.deepPurpleAccent.shade100, Color(0xff2e007d)]
                  ),
                //color: Colors.black.withOpacity(0.9),
                //colorBlendMode: BlendMode.darken,
                
              )
            ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Add Two Numbers", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, shadows: [Shadow(color: Colors.black, offset: Offset(1,2), blurRadius: 5)])),
                SizedBox(height: 25,),
                Card(
                  //elevation: 7,                  
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.deepPurple]),
                color: Colors.white.withOpacity(0.3),
                //colorBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(20)
                
              ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepPurple.shade900,),
                                  keyboardType: TextInputType.number,
                                  controller: op1,
                                  decoration: InputDecoration(
                                    hintText: "0",
                                    
                                  ),
                                ),
                              ),
                              Text("+", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey.shade600),),
                              SizedBox(
                                width: 90,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepPurple.shade900,),
                                  keyboardType: TextInputType.number,
                                  controller:  op2,
                                  decoration: InputDecoration(
                                    hintText: "0",
                                  ),
                                ),
                              ),
                              Text("=", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.grey.shade600),),              
                              Text("$result", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,),),                              
                            ],
                          ),
                          SizedBox(height: 40,),
                          
                          Row(
                            children: [
                              Stack(
                                children:[
                                    Container(
                                      width: 330,
                                      alignment: Alignment.center,
                                      child: RaisedButton(
                                        onPressed:Sum,
                                        padding: EdgeInsets.symmetric(horizontal: 70),
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                                        color: Colors.deepPurple,
                                        textColor: Colors.white,
                                        child: Text("ADD"),
                                      ),
                                    ),
                                                              
                              Container(
                                alignment: Alignment.centerRight,
                                width: 330,
                                child: FloatingActionButton.small(
                                  onPressed: (){
                                    setState(() {
                                      op1.text= "";
                                      op2.text= "";
                                      result = 0;
                                    });
                                },
                                backgroundColor: Colors.red.shade700,
                                child: Icon(Icons.refresh),
                                ),
                              )
                            ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],),

        

        //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     Navigator.push(
        //       context,
        //         MaterialPageRoute(
        //           builder: (context) => HomePage()));
        //     },
        //   child: Icon(Icons.refresh)
        // ),
        );
  }
}