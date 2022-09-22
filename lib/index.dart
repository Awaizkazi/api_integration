import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listing User'),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView.builder(itemBuilder: (BuildContext context, index) {
      return Text('Hello World!');
    });
  }
}
