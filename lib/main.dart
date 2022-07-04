import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'A Simple Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _returnOrignal() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'You have pushed the button this many times:',
                ),
              ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    // first FAB to perform decrement
                    onPressed: _decrementCounter,
                    child: Icon(Icons.remove),
                  ),
                  FloatingActionButton(
                    // second FAB to perform increment
                    onPressed: _incrementCounter,
                    child: Icon(Icons.add),
                  ),
                  FloatingActionButton(
                    // second FAB to perform increment
                    onPressed: _returnOrignal,
                    child: Text("0"),
                  ),
                ],
              )
            ]));
  }
}

/*
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            column(

            ),
          ],
                          FloatingActionButton(
                // first FAB to perform decrement
                onPressed: _decrementCounter,
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                // second FAB to perform increment
                onPressed: _incrementCounter,
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                // second FAB to perform increment
                onPressed: _returnOrignal,
                child: Text("0"),
              ),


*/
