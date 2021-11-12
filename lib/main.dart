import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My lab app',
      home: Scaffold(
        body: Center(
          child: Counter()
        ),
      )
    )
  );
}


class MyLabApp extends StatelessWidget{
  const MyLabApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          ),
        title: const Text(
          'LAb app'
        ),

        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search), tooltip: 'Search',)
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          const Text('Hello world'),
          const Center(
            child: MyButton(),
          )
        ],
      ),
      floatingActionButton:  const FloatingActionButton(onPressed: null, tooltip: 'Plus', child: Icon(Icons.add)),
    );
  }
}


class MyButton extends StatelessWidget{
  const MyButton({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        print('Button taped');
      },
      child: Container(
        height: 70.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Click')
        ),

      )
    );
  }
}


class CountDisplay extends StatelessWidget {
  const CountDisplay({required this.count, Key? key}) : super(key: key);
    final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, Key? key}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Increment'));
  }
}




class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        
        const SizedBox(width: 18),
        CountDisplay(count: _counter),
      ]
    );
  }
}
