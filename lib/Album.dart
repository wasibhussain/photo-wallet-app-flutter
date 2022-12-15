import 'package:flutter/material.dart';
import 'Details.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imagePath: 'assets/oldimages/1.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/2.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/3.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/4.png',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/5.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/6.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/7.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  ImageDetails(
      imagePath: 'assets/oldimages/baby.jpg',
      title: 'Image 1',
      desc: 'This is image 1 description'),
  // ImageDetails(
  //     imagePath: 'assets/newimages/area2.png',
  //     title: 'Image 1',
  //     desc: 'This is image 1 description'),
  // ImageDetails(
  //     imagePath: 'assets/newimages/area3.png',
  //     title: 'Image 1',
  //     desc: 'This is image 1 description'),
];

class AlbumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff50707),
        body: Stack(fit: StackFit.expand, children: [
          Image.asset(
            "assets/bg.jpg",
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
            color: Colors.black.withOpacity(0.6),
            colorBlendMode: BlendMode.darken,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 35),
                Text("Gallery",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                              blurRadius: 3)
                        ],
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 35,
                ),
                Expanded(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xfffffafa), Color(0xffffe6e6)]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return RawMaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                          imagePath: _images[index].imagePath,
                                          title: _images[index].title,
                                          desc: _images[index].desc,
                                          index: index),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: 'logo$index',
                                  child: Stack(children: [
                                    // Center(child: CircularProgressIndicator()),
                                    _images[index].imagePath == null
                                        ? Center(
                                            child: CircularProgressIndicator())
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        _images[index]
                                                            .imagePath),
                                                    fit: BoxFit.cover))),
                                  ]),
                                ));
                          },
                          itemCount: _images.length,
                        )))
              ],
            ),
          ),
        ]));
  }
}

class ImageDetails {
  final imagePath;
  final title;
  final desc;
  ImageDetails(
      {@required this.imagePath, @required this.title, @required this.desc});
}
