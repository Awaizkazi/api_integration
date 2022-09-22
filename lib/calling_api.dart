import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallingAPI extends StatefulWidget {
  const CallingAPI({super.key});

  @override
  State<CallingAPI> createState() => _CallingAPIState();
}

class _CallingAPIState extends State<CallingAPI> {
  final url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    var res =
        await http.get(Uri.http('jsonplaceholder.typicode.com', 'photos'));

    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(data[index]['title']),
                trailing: Image.network(
                  data[index]['url'],
                ),
                // leading: Text(data[index]['thumbnailUrl']),
              );
            }),
      ),
    );
  }
}
