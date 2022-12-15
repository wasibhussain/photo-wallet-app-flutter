import 'package:firstproject/Album.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final imagePath;
  final title;
  final desc;
  final index;
  DetailsPage({@required this.imagePath, @required this.title, @required this.desc, @required this.index});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Colors.redAccent,
      body: Stack(
        fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          // begin: Alignment.topLeft,
                          // end: Alignment.bottomRight,
                          colors: [Color(0xfffffafa), Color(0xffffe6e6)]
                          )),
            ),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Hero(
                  tag: 'logo$index',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  height: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 20, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Color(0xfff50707),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              desc,
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
      
                      //SizedBox(width: 500,),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                          width: 500,
                          height: 50,
                          child: RaisedButton(onPressed: (){
                              Navigator.pop(context);
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            color: Color(0xddf50707),
                            child: Text("BACK", style: TextStyle(color: Colors.white, fontSize: 18),),
                            ),
                        ),
                    ],
                  ),
                )
            ],
          ),
        ),
        ])
    );
  }
}
