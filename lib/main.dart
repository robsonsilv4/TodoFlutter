import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Text(
        //   'Oi',
        // ),
        title: Text(
          'Todo List',
        ),
        // actions: <Widget>[
        //   Icon(
        //     Icons.plus_one,
        //   )
        // ],
      ),
      body: Center(
        child: Container(
          child: Text(
            'Olá, mundo!',
          ),
        ),
      ),
    );
  }
}
