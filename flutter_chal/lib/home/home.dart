import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chal/models/api_model.dart';
import 'package:flutter_chal/config/api_config.dart';
import 'package:flutter_chal/movie_details/movie_details.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

List<Api_model> _api;

Future<List<Api_model>> _getMovies() async {
  try {
    List<Api_model> listMovies = List();
    final response = await http.get(BASE_URL + '/4/list/1?api_key=' + API_KEY);
    if (response.statusCode == 200) {
      var decodedJson = json.decode(response.body);
      decodedJson.forEach((item) => listMovies.add(Api_model.fromJson(item)));
      return listMovies;
    } else {
      print("Error to load List Movies");
      return null;
    }
  } catch (e) {
    print("Error to load List Movies $e");
    return null;
  }
}

class _MyHomePageState extends State<MyHomePage> {

  Map data;
  List Movies;

  Future getdata() async {
    http.Response response = await http.get(
        BASE_URL+'/4/list/1?api_key='+API_KEY+'&language=pt-BR');
    data = json.decode(response.body);
    setState(() {
      Movies = data['results'];
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getdata();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title,
        style: TextStyle(
          fontSize: 22)
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), 
        onPressed: (){})
      ],
      ),
      body: Column(
          children: <Widget>[            
    Stack(
      children: <Widget>[
        Container(
          height: 60,
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          color: Colors.deepPurple,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child:
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
              color: Colors.white
              ),
              height: MediaQuery.of(context).size.height -200,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 24, left: 20, right: 20),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 120,
                    child: ListView.builder(
                      itemCount: Movies.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, i){
                        print(_api);
                        return Container(
                          child: Padding(padding: EdgeInsets.all(1),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(IMAGE_URL_w500 + Movies[i]['poster_path'], width: 80, height: 80),
                          ),
                          ),
                        );
                      }
                      )
                    ),
                  ),
              ],
              )
            ),
        ),      
      Padding(
          padding: EdgeInsets.only(top: 170, right: 10, bottom: 10),
          child: Container(
            height: MediaQuery.of(context).size.height - 280,
            child: Movies == null ? Center(          
            child: CircularProgressIndicator(
            backgroundColor: Colors.yellowAccent,
            strokeWidth: 5,
          ),
          ) : ListView.builder(
            itemCount: Movies.length,
            itemBuilder: (BuildContext, i) {
              return FlatButton(
                child: movieList(Movies, i),
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return MovieDetails();
                  }));
                },
              );
            })
          )
        )
      ],
    )
    ],
    ), // This trailing comma makes auto-formatting nicer for build methods.
  );
  }
}

class movieList extends StatelessWidget {
  
  Color txtColor = Colors.deepPurple;

  final movies;
  final i;

  movieList(this.movies, this.i);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  margin: const EdgeInsets.all(16.0),
                  child: Container(                
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(IMAGE_URL_w500 + movies[i]['poster_path'], width: 100, height: 100),
                  ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                    image: DecorationImage(
                      image: NetworkImage(IMAGE_URL_w500 + movies[i]['poster_path']),
                      fit: BoxFit.fill),
                  ),
                )),
              Expanded(
              child: Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    movies[i]['title'],
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.bold,
                        color: txtColor),
                  ),
                  Padding(padding: const EdgeInsets.all(2.0)),
                  Text(
                    movies[i]['overview'],
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.blueGrey, fontFamily: 'Arvo-Italic'),
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ))
          ],
        ),
      ],
    );
  }
}

