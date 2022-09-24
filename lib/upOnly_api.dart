import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UpOnlyApi extends StatefulWidget {
  const UpOnlyApi({super.key});

  @override
  State<UpOnlyApi> createState() => _UpOnlyApiState();
}

class _UpOnlyApiState extends State<UpOnlyApi> {
  final url = 'https://www.uponly.in/mobileappapi/task_status.php';
  var data;

  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
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
                title: Text(data[index]['types']),
              );
            }),
      ),
    );
  }
}
