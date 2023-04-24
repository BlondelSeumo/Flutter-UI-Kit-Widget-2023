// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:filter_list/filter_list.dart';

// class Concept2Chips extends StatefulWidget {
//   Concept2Chips();

//   @override
//   Concept2ChipsState createState() => new Concept2ChipsState();
// }

// class Concept2ChipsState extends State<Concept2Chips> {
//   @override
//   List<String> countList = [
//     "One",
//     "Two",
//     "Three",
//     "Four",
//     "Five",
//     "Six",
//     "Seven",
//     "Eight",
//     "Nine",
//     "Ten",
//     "Eleven",
//     "Tweleve",
//     "Thirteen",
//     "Fourteen",
//     "Fifteen",
//     "Sixteen",
//     "Seventeen",
//     "Eighteen",
//     "Nineteen",
//     "Twenty"
//   ];
//   List<String> selectedCountList = [];

//   void _openFilterDialog() async {
//     await FilterListDialog.display(context,
//         listData: countList,
//         width: double.infinity,
//         choiceChipLabel: (dynamic item) {
//           return item;
//         },
//         validateSelectedItem: (list, dynamic val) {
//           return list!.contains(val);
//         },
//         // onItemSearch: (list, text) {
         
//         //   // if (list!.any((element) =>
//         //   // element!.toLowerCase().contains(text.toLowerCase()))) {
//         //   // return list
//         //   // .where((element) =>
//         //   //     element.toLowerCase().contains(text.toLowerCase()))
//         //   // .toList();
//         //   // } else {
//         //   //   return [];
//         //   // }
//         // },
//         height: 480,
//         borderRadius: 20,
//         headlineText: "Select Count",
//         searchFieldHintText: "Search Here",
//         selectedListData: selectedCountList,
//         onApplyButtonClick: (list) {
//           if (list != null) {
//             setState(() {
//               selectedCountList = List.from(list);
//             });
//           }
//           Navigator.pop(context);
//         });
//   }

//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color(0xff8F7AFE),
//           centerTitle: true,
//           title: Text(
//             "Concept 2 Chips Select",
//             style: TextStyle(
//                 fontFamily: "Sofia", color: Colors.white, fontSize: 17.0),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _openFilterDialog,
//           tooltip: 'Increment',
//           child: Icon(Icons.add),
//         ),

//         /// check for empty or null value selctedCountList
//         body: selectedCountList == null || selectedCountList.length == 0
//             ? Center(
//                 child: Text(
//                   'No text selected',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               )
//             : ListView.separated(
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(selectedCountList[index]),
//                   );
//                 },
//                 separatorBuilder: (context, index) => Divider(),
//                 itemCount: selectedCountList.length));
//   }
// }
