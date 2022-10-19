import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:pertemuan1/latihan7_Rabu-12-Oktober/todo_item.dart';

class HttpExamplePage extends StatelessWidget {
  const HttpExamplePage({Key key}) : super(key: key);
  Future<List<TodoItem>> getTodos() async {
    Response res =
        await get(Uri.http('jsonplaceholder.typicode.com', '/todos'));
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<TodoItem> todos = body.map((item) {
        return TodoItem(
            title: item['title'] as String,
            completed: item['completed'] as bool);
      }).toList();
      return todos;
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Example'),
        ),
        body: FutureBuilder(
            future: getTodos(),
            builder:
                (BuildContext context, AsyncSnapshot<List<TodoItem>> snapshot) {
              if (snapshot.hasData) {
                List<TodoItem> todos = snapshot.data;
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: todos[index].completed
                          ? Icon(Icons.check_box)
                          : Icon(Icons.check_box_outline_blank),
                      title: Text(todos[index].title),
                    ),
                  );
                });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
