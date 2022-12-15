import 'package:firstproject/Album.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Row(children: [Text("Wish")]),
        //   ),

        body: Stack(fit: StackFit.expand, children: [
      Image.asset(
        "assets/bg.jpg",
        fit: BoxFit.cover,
        alignment: Alignment.centerLeft,
        color: Colors.black.withOpacity(0.5),
        colorBlendMode: BlendMode.darken,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 45, 0, 0),
              //First Card
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xfffffafa), Color(0xffffe6e6)])),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 205,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/newimages/1.jpg")),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text("Gallery",
                                style: TextStyle(
                                    color: Color(0xfff50707),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              color: Color(0xfff50707),
                              child: Text("Retry"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Collection 1
            Card(
              color: Color(0xffffeded),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xfffffafa), Color(0xffffe6e6)])),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 500,
                      ),
                      Container(
                          width: 350,
                          child: Text(
                            "Collection 1",
                            style: TextStyle(
                                color: Color(0xfff50707),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),

                      SizedBox(
                        height: 15,
                      ),

                      //cards hor scroll view
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            //alignment: Alignment.topCenter,
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        margin: EdgeInsets.only(right: 15),
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade400,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/newimages/1.jpg")),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            backgroundBlendMode:
                                                BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          child: Text(
                                        "  Album",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlbumPage()));
                                  },
                                ),
                                InkWell(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        margin: EdgeInsets.only(right: 15),
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade400,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/newimages/1.jpg")),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            backgroundBlendMode:
                                                BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          child: Text(
                                        "  Album",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlbumPage()));
                                  },
                                ),
                                InkWell(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        margin: EdgeInsets.only(right: 15),
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade400,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/newimages/1.jpg")),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            backgroundBlendMode:
                                                BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          child: Text(
                                        "  Album",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlbumPage()));
                                  },
                                ),
                                InkWell(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 120,
                                        margin: EdgeInsets.only(right: 15),
                                        height: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.orange.shade400,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/newimages/1.jpg")),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            backgroundBlendMode:
                                                BlendMode.darken,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                          child: Text(
                                        "  Album",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlbumPage()));
                                  },
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

            SizedBox(
              height: 20,
            ),

            //Collection 2
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
                child: Column(
                  children: [
                    SizedBox(
                      width: 500,
                    ),
                    Container(
                        width: 350,
                        child: Text(
                          "Collection 2",
                          style: TextStyle(
                              color: Color(0xfff50707),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    //cards hor scroll view
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        // margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: FittedBox(
                          fit: BoxFit.fill,
                          //alignment: Alignment.topCenter,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 120,
                                margin: EdgeInsets.only(right: 15),
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade400,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/newimages/1.jpg")),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.black.withOpacity(0.7),
                                      backgroundBlendMode: BlendMode.darken,
                                    ),
                                  ),
                                  onTap: () {
                                    //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                    return showDialogFunc(
                                        context, "assets/newimages/1.jpg");
                                  },
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: EdgeInsets.only(right: 15),
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade400,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/newimages/1.jpg")),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.7),
                                    backgroundBlendMode: BlendMode.darken,
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: EdgeInsets.only(right: 20),
                                height: 120,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade400,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/newimages/1.jpg")),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.black.withOpacity(0.7),
                                    backgroundBlendMode: BlendMode.darken,
                                  ),
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

            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    ]));
  }
}

showDialogFunc(context, imgPath) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,
              ),
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width * 0.98,
              child: Image.asset(imgPath),
            ),
          ),
        ),
      );
    },
  );
}
