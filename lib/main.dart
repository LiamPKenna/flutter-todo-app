import 'package:flutter/material.dart';
import 'package:todo/util/dbhelper.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/screens/todolist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<Todo> todos = List<Todo>();
    // DbHelper helper = DbHelper();
    // helper
    //     .initializeDb()
    //     .then((result) => helper.getTodos().then((result) => todos = result));
    // DateTime today = DateTime.now();
    // Todo todo =
    //     Todo("Buy Melons", 3, today.toString(), "And make sure they are good");
    // helper.insertTodo(todo);

    return MaterialApp(
      title: 'Todos',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(title: "Todos"),
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
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: TodoList(),
    );
  }
}
