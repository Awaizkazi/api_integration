// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// class Tiles extends StatefulWidget {
//   const Tiles({super.key});

//   @override
//   State<Tiles> createState() => _TilesState();
// }

// class _TilesState extends State<Tiles> {
//   getDioData() async {
//     var dio = Dio();
//     Response response =
//         await dio.get('https://jsonplaceholder.typicode.com/photos');
//     print(response.data[0]);
//   }

//   ConstList list = ConstList();
//   @override
//   Widget build(BuildContext context) {
//     getDioData();
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: list.student.length,
//         itemBuilder: (context, index) {
//           return ListTile(title: Text(${list.ListName(index)}),
//           subtitle: Text(${list.ListRollNo(index)}),);
//         },
//       ),
//     );
//   }
  
//   static ConstList() {}
// }
