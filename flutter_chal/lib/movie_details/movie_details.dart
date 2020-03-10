import 'package:flutter_chal/config/api_config.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter_chal/home/home.dart';

class MovieDetails extends StatelessWidget {

  final movies;
  // MovieDetails(this.movies);
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
            filter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Positioned(
            child: AppBar(
              automaticallyImplyLeading: true,
              title: Text('​The Movies App'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.orange),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage())),
              ), 
              actions: <Widget>[
              ],
            )
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 100),
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
                      Padding(padding: const EdgeInsets.all(10.0)),
                    ],
                    alignment: AlignmentDirectional.bottomCenter,                    
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 30, 10),
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
                  Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.all(2.0)),
                    Text(movies['overview'],
                      style: TextStyle(
                      color: Colors.white, fontFamily: 'Bebas-Regular')
                  )
                  ],
                  ),
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