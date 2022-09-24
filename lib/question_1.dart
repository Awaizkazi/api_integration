import 'package:flutter/material.dart';

class QuestionOne extends StatefulWidget {
  const QuestionOne({super.key});

  @override
  State<QuestionOne> createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String result = '';
  String res = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue[300],
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter a Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int mul = int.parse(num1controller.text) * 3;
                    // int mul2 = int.parse(num2controller.text) * 4;
                    // int mul2 = int.parse(num1controller.text) * 4;
                    result = mul.toString();
                    // result = mul2.toString();
                  });
                },
                child: Text('*3'),
              ),
              Text('Result  : $result'),
              // Text('Result * 4: $res'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter a Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // int mul = int.parse(num1controller.text) * 3;
                    int mul2 = int.parse(num1controller.text) * 4;
                    // int mul2 = int.parse(num1controller.text) * 4;
                    result = mul2.toString();
                    // res = mul.toString();
                  });
                },
                child: Text('*4'),
              ),
              Text('Result : $result'),
              // Text('Result * 4 : $res'),
            ],
          ),
        ),
      ),
    );
  }
}
