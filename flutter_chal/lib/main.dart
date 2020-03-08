import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            TopBar()
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 50,
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
              height: MediaQuery.of(context).size.height - 200,
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 24, left: 20, right: 20),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          child: Padding(padding: EdgeInsets.all(2),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network('https://loremflickr.com/320/32$index', width: 60, height: 60),
                          )
                          ),
                        );
                      }
                      ),
                    ),
                  ),
              ],
              )
            ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 120, right: 4, bottom: 10),
          child: Container(
            height: MediaQuery.of(context).size.height -260,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(6),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network('https://loremflickr.com/320/32$index', width: 100, height: 100),
                    )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Título',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Text('Filme: O melhor filme que eu já ví...',
                          style: TextStyle(
                            fontSize: 17),
                            overflow: TextOverflow.ellipsis,
                          )
                      ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('17:01'),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              
                            )
                          )
                        ]
                      ),
                    )
                  ],
                );
              }),
          ),
        ),
      ]
    );
  }
}
