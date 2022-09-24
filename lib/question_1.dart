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
        color: Colors.white,
        child: Column(
          children: [
            Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.black,
              elevation: 20,
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
                        result = mul.toString();
                        // result = mul2.toString();
                      });
                    },
                    child: Text('*3'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo),
                  ),
                  Text('Result  : $result'),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadowColor: Colors.black,
              elevation: 20,
              color: Colors.pink[200],
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
                        // int mul = int.parse(num1controller.text) * 3;
                        int mul2 = int.parse(num1controller.text) * 4;
                        // int mul2 = int.parse(num1controller.text) * 4;
                        result = mul2.toString();
                        // res = mul.toString();
                      });
                    },
                    child: Text('*4'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink[400]),
                  ),
                  Text('Result : $result'),
                  // Text('Result * 4 : $res'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
