import 'package:flutter/material.dart';

class QuestionOne extends StatefulWidget {
  const QuestionOne({super.key});

  @override
  State<QuestionOne> createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = '0';
  String res = '0';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blue[300],
        child: Card(
          child: Column(
            children: [
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
                    int mul = int.parse(num1controller.text) * 3;

                    result = mul.toString();
                  });
                },
                child: Text('*3'),
              ),
              Text('Result : $result'),
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
                  controller: num2controller,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    int mul = int.parse(num2controller.text) * 4;
                    res = mul.toString();
                  });
                },
                child: Text('*4'),
              ),
              Text('Result : $res'),
            ],
          ),
        ),
      ),
    );
  }
}
