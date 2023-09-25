import 'package:beam_ui1/screens/widows_data.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidowsData(),
    );
  }
}

// class LandscapeView extends StatelessWidget {
//   const LandscapeView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 420),
//         itemBuilder: (_, index) {
//           return const WidowCard();
//         });
//   }
// }
