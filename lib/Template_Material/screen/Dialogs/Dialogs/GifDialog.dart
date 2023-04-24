// import 'package:flutter/material.dart';
// import 'package:bigkit_material_null_safety/Template_Material/screen/Card/Model/ConceptModel.dart';

// class GifDialogs extends StatefulWidget {
//   GifDialogs({Key? key}) : super(key: key);

//   @override
//   _GifDialogsState createState() => _GifDialogsState();
// }

// class _GifDialogsState extends State<GifDialogs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white.withOpacity(0.99),
//       appBar: AppBar(
//         elevation: 0.0,
//         title: Text(
//           "Gifty Dialog",
//           style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w600),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: InkWell(
//             onTap: () {
//               ShowGifDialog(context);
//             },
//             child: Container(
//               width: 200,
//               height: 50,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(40.0)),
//                   color: Colors.greenAccent),
//               child: Center(
//                 child: Text("Gif Dialog",
//                     style: TextStyle(
//                         color: Colors.black54,
//                         fontWeight: FontWeight.w800,
//                         fontFamily: "Sofia")),
//               ),
//             )),
//       ),
//     );
//   }
// }

// void ShowGifDialog(BuildContext context) async {
//   showDialog(
//       context: context,
//       builder: (_) => NetworkGiffyDialog(
//             image: Image.network(
//               "https://firebasestorage.googleapis.com/v0/b/cryptocanyon9.appspot.com/o/original.gif?alt=media&token=ee61ee91-1d4b-40c9-91a0-be9c8aef1767",
//               fit: BoxFit.cover,
//             ),
//             title: Text('Delete this Recipe?',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontFamily: "Gotik",
//                     fontSize: 22.0,
//                     fontWeight: FontWeight.w600)),
//             description: Text(
//               "Are you sure you want to delete ",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontFamily: "Popins",
//                   fontWeight: FontWeight.w300,
//                   color: Colors.black26),
//             ),
//             onOkButtonPressed: () {
//               Navigator.pop(context);

//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("Delete"),
//                 backgroundColor: Colors.red,
//                 duration: Duration(seconds: 3),
//               ));
//             },
//           ));
// }
