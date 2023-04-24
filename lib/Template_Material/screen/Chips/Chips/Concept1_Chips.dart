// import 'dart:ui';
// import 'package:flutter/material.dart';

// class Concept1Chips extends StatefulWidget {
//   Concept1Chips();

//   @override
//   Concept1ChipsState createState() => new Concept1ChipsState();
// }

// class Concept1ChipsState extends State<Concept1Chips> {
//   @override
//   String value = 'flutter';
//   List<S2Choice<String>> options = [
//     S2Choice<String>(value: 'ion', title: 'Ionic'),
//     S2Choice<String>(value: 'flu', title: 'Flutter'),
//     S2Choice<String>(value: 'rea', title: 'React Native'),
//   ];
//   List<S2Choice<String>> options2 = [
//     S2Choice<String>(value: 'f', title: 'Female'),
//     S2Choice<String>(value: 'm', title: 'Male'),
//   ];
//   List<S2Choice<String>> options3 = [
//     S2Choice<String>(value: 'act', title: 'Action'),
//     S2Choice<String>(value: 'rom', title: 'Romance'),
//     S2Choice<String>(value: 'car', title: 'Cartoon'),
//     S2Choice<String>(value: 'ani', title: 'Anime'),
//     S2Choice<String>(value: 'adv', title: 'Adventure'),
//   ];
//   List<S2Choice<String>> options4 = [
//     S2Choice<String>(value: 'and', title: 'Android'),
//     S2Choice<String>(value: 'iph', title: 'Iphone'),
//   ];
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff8F7AFE),
//         centerTitle: true,
//         title: Text(
//           "Concept 1 Chips Select",
//           style: TextStyle(
//               fontFamily: "Sofia", color: Colors.white, fontSize: 17.0),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(15),
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: <Widget>[
//             SmartSelect<String>.single(
//                 title: 'Framework',
//                 value: value,
//                 choiceItems: options,
//                 choiceStyle: S2ChoiceStyle(activeColor: Colors.green),
//                 choiceType: S2ChoiceType.chips,
//                 onChange: (state) => setState(() => value = state.value)),
//             SmartSelect<String>.single(
//                 title: 'Gender',
//                 value: value,
//                 choiceItems: options2,
//                 choiceStyle: S2ChoiceStyle(activeColor: Colors.green),
//                 choiceType: S2ChoiceType.chips,
//                 onChange: (state) => setState(() => value = state.value)),
//             SmartSelect<String>.single(
//                 title: 'Film',
//                 value: value,
//                 choiceItems: options3,
//                 choiceStyle: S2ChoiceStyle(activeColor: Colors.green),
//                 choiceType: S2ChoiceType.chips,
//                 onChange: (state) => setState(() => value = state.value)),
//             SmartSelect<String>.single(
//                 title: 'Smartphone',
//                 value: value,
//                 choiceItems: options4,
//                 choiceStyle: S2ChoiceStyle(activeColor: Colors.green),
//                 choiceType: S2ChoiceType.chips,
//                 onChange: (state) => setState(() => value = state.value)),
//             SizedBox(
//               height: 10.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
