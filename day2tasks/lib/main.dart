import 'package:flutter/material.dart';
import './second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  //int _counter = 0;
  int _num1 = 0;
  int _num2 = 0;
  int _num3 = 0;
  int _sum = 0;

  bool _addnumbers() {
    _sum = _num1 + _num2;
    if (_sum == _num3) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              onChanged: (value) {
                setState(() {
                  _num1 = int.parse(value);
                });
              },
            ),
            new TextField(
              onChanged: (value2) {
                setState(() {
                  _num2 = int.parse(value2);
                });
              },
            ),
            new TextField(
              onChanged: (value3) {
                setState(() {
                  _num3 = int.parse(value3);
                });
              },
            ),
            Text(
              '$_num1',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              
              onPressed: (){
              if(_addnumbers()==true){
                Navigator.push(
                  context, new MaterialPageRoute(
                  builder: (BuildContext context)=> SecondPage()
                ));
               
              }  
              },
              child: Text('Check'),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (),
      //   tooltip: 'checkResult',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
