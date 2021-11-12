import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My lab app',
      home: LabScaffold()
    )
  );
}



class MyAppLab extends StatelessWidget{
  const MyAppLab({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.0,
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(color: Colors.purple),

      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Show menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }

}



class LabScaffold extends StatelessWidget{
  const LabScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppLab(
              title: Text(
                'My Lab App',
                style: Theme.of(context)
                .primaryTextTheme
                .headline6,
              ),
          ),
          const Expanded(
              child: Center(
                  child: Text('Hello friend')
              )
          )
        ],
      )
    );
  }
}