// import 'dart:convert';

// import 'package:api_integration/Models/PostsModel.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List<PostsModel> postList = [];

//   Future<List<PostsModel>> getPostApi() async {
//     final res = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var data = jsonDecode(res.body.toString());
//     if (res.statusCode == 200) {
//       for (Map i in data) {
//         postList.add(PostsModel.fromJson(i));
//       }
//       return postList;
//     } else {
//       return postList;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('API Integration'),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//                 future: getPostApi(),
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     return Center(child: CircularProgressIndicator());
//                   } else {
//                     return ListView.builder(
//                         itemCount: postList.length,
//                         itemBuilder: (BuildContext context, index) {
//                           return Card(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [Colors.blue, Colors.pink],
//                                 ),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: SingleChildScrollView(
//                                 scrollDirection: Axis.horizontal,
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               Text(
//                                                 'Title :',
//                                                 style: TextStyle(
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: Colors.amber,
//                                                 ),
//                                               ),
//                                               Text(
//                                                 postList[index]
//                                                     .title
//                                                     .toString(),
//                                                 textAlign: TextAlign.center,
//                                                 maxLines: 1,
//                                               ),
//                                             ],
//                                           ),
//                                           Text(
//                                             'Id',
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.purple,
//                                             ),
//                                           ),
//                                           Text(
//                                             postList[index].id.toString(),
//                                           ),
//                                           Text(
//                                             'UserId\n' +
//                                                 postList[index]
//                                                     .userId
//                                                     .toString(),
//                                           ),
//                                           Text(
//                                             'Description',
//                                             style: TextStyle(
//                                               fontSize: 15,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.purple,
//                                             ),
//                                           ),
//                                           Text(
//                                             'Description\n' +
//                                                 postList[index].body.toString(),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         });
//                   }
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // 18 : 00 se video dekna hai
// // https://www.youtube.com/watch?v=81kEKRHMp3s&list=PLFyjjoCMAPtzgITDreXNNkSWLKbd1wf51&index=7
