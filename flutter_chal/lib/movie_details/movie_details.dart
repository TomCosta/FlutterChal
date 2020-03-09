import 'package:flutter_chal/config/api_config.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

abstract class MovieDetails extends StatelessWidget {

  final movies;
  MovieDetails(this.movies);

  @override
  Widget build(BuildContext context) {
    var id = movies['id'];
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(IMAGE_URL_w500 + movies['backdrop_path'],
          fit: BoxFit.cover),
          BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            width: 400,
                            height: 400,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      IMAGE_URL_w500 + movies['poster_path']),
                                  fit: BoxFit.contain),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20.0,
                                  offset: Offset(0.0, 10.0))
                              ]),
                        ),
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                        InkWell(
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.video_call,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(180),
                              gradient: LinearGradient(
                                colors: [Colors.brown, Colors.deepOrange],
                                begin: const FractionalOffset(0.5, 0.0),
                                end: const FractionalOffset(0.0, 0.5),
                                stops: [0.0, 1.0],
                              )),
                        ),
                      ),                      
                      Container(
                          width: 90,
                          height: 20,                         
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Colors.brown, Colors.deepOrange],
                                begin: const FractionalOffset(0.5, 0.0),
                                end: const FractionalOffset(0.0, 0.5),
                                stops: [0.0, 1.0],
                              )),
                              child: Text(
                                movies['release_date'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Arvo-Bold'
                                ) ,
                              ),
                        ),                                            
                       ],
                     )                   
                    ],
                    alignment: AlignmentDirectional.bottomCenter,                    
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 0.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Text(movies['title'],
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontFamily: 'Bebas-Regular'))),
                        Text('${movies['vote_average']}/10',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'Bebas-Regular'))
                      ],
                    ),
                  ),
                  Text(movies['overview'],
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Bebas-Regular')),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        width: 150.0,
                        height: 60.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Rate Movie',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Bebas-Regular',
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.deepPurple),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.deepPurple),
                            ),
                          ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.brown),
                          )),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}