import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData
      (
       
        primarySwatch: Colors.blue,
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
  int _counter = 0;
  String _userinput= '';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void _decrementCounter(){
      setState(() {
       _counter--; 
      });
    }  
  void _resetCounter(){
    setState(() {
      _counter=0;
    });
  }
void _multiplyCounter(){
  setState(() {
   _counter=_counter * _counter; 
  });
}
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              new TextField( // user k input lene k liye
              onChanged: (value){
                _userinput=value;
              }
                ),
           new Text( 
             'You have pushed the button this many times:',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'Roboto'
              
              
            ),
            ),
          /*  RaisedButton(
              onPressed: (){
              },
              child: Text('Add'),
            ),
 */
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton (
        color: Colors.black,
     textColor: Colors.white,
     padding: const EdgeInsets.all(10.0),
        
        onPressed: _incrementCounter,
        child: Text('add'),
            ),
   RaisedButton(
     color: Colors.black,
     textColor: Colors.white,
     padding: const EdgeInsets.all(10.0),
       onPressed: _decrementCounter,
       child: Text('decrease'),
     ),
     RaisedButton(
       color: Colors.black,
     textColor: Colors.white,
     padding: const EdgeInsets.all(10.0),
       onPressed: _resetCounter,
      child: Text('Reset'),
     ),
    RaisedButton(
      color: Colors.black,
     textColor: Colors.white,
     padding: const EdgeInsets.all(8.0),
      onPressed: _multiplyCounter,
      child: Text('Multiply'),
      ),
          ],
        ),
      ),
      //  tooltip: 'Increment',
      //  child: Icon(Icons.add),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
