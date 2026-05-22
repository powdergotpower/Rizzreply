import 'package:flutter/material.dart';

void main() {
  runApp(const RizzreplyApp());
}

class RizzreplyApp extends StatelessWidget {
  const RizzreplyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rizzreply',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RizzreplyHomePage(title: 'Rizzreply Home'),
    );
  }
}

class RizzreplyHomePage extends StatefulWidget {
  const RizzreplyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RizzreplyHomePage> createState() => _RizzreplyHomePageState();
}

class _RizzreplyHomePageState extends State<RizzreplyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
