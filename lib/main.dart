import 'package:flutter/material.dart';
import 'package:todo/models/item.dart';

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

class HomePage extends StatefulWidget {
  var items = List<Item>();

  HomePage() {
    items = [];
    items.add(Item(title: 'Item 1', done: false));
    items.add(Item(title: 'Item 2', done: true));
    items.add(Item(title: 'Item 3', done: false));
  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(widget.items[index].title);
        },
      ),
    );
  }
}
